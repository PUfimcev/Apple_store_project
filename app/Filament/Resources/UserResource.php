<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;

use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationGroup = 'Users';
    protected static ?string $navigationLabel = 'Admins';
    protected static ?string $navigationIcon = 'heroicon-o-adjustments-horizontal';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_user');
    }
    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_user');
    }
    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_user');
    }
    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_user');
    }
    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_user');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_user');
    }
    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_user');
    }
    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_user');
    }
    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_user');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_user');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_user');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_user');
    }

    public static function canViewTrashed(): bool
    {
        return auth()->user()->can('view_trashed_user');
    }
    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_user');
    }
    public static function getGloballySearchableAttributes(): array
    {
        return ['name', 'email'];
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('email')
                    ->email()
                    ->required()
                    ->maxLength(255),
                Forms\Components\DateTimePicker::make('email_verified_at'),
                Forms\Components\TextInput::make('password')
                    ->password()
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('roles')
//                    ->multiple()
                    ->relationship('roles', 'name')
                    ->preload()
                    ->required()
//                    ->searchable()
                    ->label('Role'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('email')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('email_verified_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable(),
                Tables\Columns\TextColumn::make('roles.name')
                    ->label('Role')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Deleted successfully')
                            ->body($record->name ? "$record->name has been deleted." : 'User has been deleted.')
                            ->success()
                            ->actions([
                                Action::make('Read')
                                    ->button()
                                    ->markAsRead(),
                                Action::make('Unread')
                                    ->button()
                                    ->markAsUnread(),
                            ])
                            ->sendToDatabase(auth()->user());
                        $record->delete();
                        redirect()->route('filament.admin.resources.users.index');
                        Notification::make()
                            ->success()
                            ->title('User deleted')
                            ->body($record->name ? "$record->name has been deleted successfully." : 'User has been deleted successfully.')
                            ->send();
                    })
                    ->requiresConfirmation()
                    ->modalHeading('Delete User')
                    ->modalDescription('Are you sure you want to delete this user?')
                    ->modalSubmitActionLabel('Delete'),
                Tables\Actions\RestoreAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Restored successfully')
                            ->body($record->name ? "$record->name has been restored." : 'User has been restored.')
                            ->success()
                            ->sendToDatabase(auth()->user());
                        $record->restore();
                        redirect()->route('filament.admin.resources.users.index');
                        Notification::make()
                            ->success()
                            ->title('User restored')
                            ->body('User has been restored successfully.')
                            ->send();
                    }),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Deleted successfully')
                                    ->body($record->name ? "$record->name has been deleted." : 'User has been deleted.')
                                    ->success()
                                    ->actions([
                                        Action::make('Read')
                                            ->button()
                                            ->markAsRead(),
                                        Action::make('Unread')
                                            ->button()
                                            ->markAsUnread(),
                                    ])
                                    ->sendToDatabase(auth()->user());
                                $record->delete();
                                redirect()->route('filament.admin.resources.users.index');
                                Notification::make()
                                    ->success()
                                    ->title('User deleted')
                                    ->body('User has been deleted successfully.')
                                    ->send();
                            }
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Delete User')
                        ->modalDescription('Are you sure you want to delete this user?')
                        ->modalSubmitActionLabel('Delete'),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->action(function ($records) {

                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Force deleted successfully')
                                    ->body($record->name ? "$record->name has been deleted from DB." : 'User has been deleted from DB.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->forceDelete();
                                redirect()->route('filament.admin.resources.users.index');
                                Notification::make()
                                    ->success()
                                    ->title('User deleted')
                                    ->body('User has been deleted successfully.')
                                    ->send();
                            }
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Force Delete User')
                        ->modalDescription('Are you sure you want to force delete this user?')
                        ->modalSubmitActionLabel('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {
                                Notification::make()
                                    ->title('Restored successfully')
                                    ->body($record->name ? "$record->name has been restored." : 'User has been restored.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->restore();
                                redirect()->route('filament.admin.resources.users.index');
                                Notification::make()
                                    ->success()
                                    ->title('User restored')
                                    ->body('User has been restored successfully.')
                                    ->send();

                            }
                        }),
                ]),
            ]);
    }



    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'view' => Pages\ViewUser::route('/{record}'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return (string)static::getModel()::count();
    }
    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
