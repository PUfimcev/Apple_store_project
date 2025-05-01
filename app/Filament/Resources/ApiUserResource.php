<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ApiUserResource\Pages;
use App\Filament\Resources\ApiUserResource\RelationManagers\DeliveryAddressesRelationManager;
use App\Models\ApiUser;
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
use Illuminate\Support\Facades\Storage;

class ApiUserResource extends Resource
{
    protected static ?string $navigationGroup = 'Users';
    protected static ?string $navigationLabel = 'Consumers';
    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?string $model = ApiUser::class;


    protected static ?string $recordTitleAttribute = 'user_name';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_api::user');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_api::user');
    }
    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_api::user');
    }
    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_api::user');
    }
    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_api::user');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_api::user');
    }
    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_api::user');
    }
    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_api::user');
    }
    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_api::user');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_api::user');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_api::user');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_api::user');
    }

    public static function canViewTrashed(Model $record): bool
    {
        return auth()->user()->can('view_trashed_api::user');
    }
    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_api::user');
    }

    public static function getGloballySearchableAttributes(): array
    {
        return ['user_name', 'email', 'first_name'];
    }


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('user_name')
                    ->maxLength(255),
                Forms\Components\TextInput::make('email')
                    ->email()
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('password')
                    ->password()
                    ->revealable()
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('first_name')
                    ->maxLength(255),
                Forms\Components\TextInput::make('last_name')
                    ->maxLength(255),
                Forms\Components\DatePicker::make('day_of_birth'),
                Forms\Components\TextInput::make('phone_number')
                    ->tel()
                    ->maxLength(255),
                Forms\Components\TextInput::make('address')
                    ->maxLength(255),
                Forms\Components\TextInput::make('city')
                    ->maxLength(255),
                Forms\Components\Toggle::make('is_subscribed')
                    ->required(),
                Forms\Components\DateTimePicker::make('email_verified_at'),
                Forms\Components\DateTimePicker::make('password_reset_expiration'),
                Forms\Components\DateTimePicker::make('last_login_at'),
                Forms\Components\FileUpload::make('profile_picture')
                    ->image()
                    ->directory('profile_images')
                    ->disk('public')
                    ->visibility('public')
                    ->deleteUploadedFileUsing(fn ($state, $record) => $state ? Storage::disk('public')->delete('products_images/' . $state) : null),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user_name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('email')
                    ->searchable(),
                Tables\Columns\TextColumn::make('first_name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('last_name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('profile_picture')
                    ->searchable(),
                Tables\Columns\TextColumn::make('day_of_birth')
                    ->date('d.m.Y')
                    ->sortable(),
                Tables\Columns\TextColumn::make('phone_number')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('address')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('city')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\IconColumn::make('is_subscribed')
                    ->boolean()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('email_verified_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('last_login_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
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
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Deleted successfully')
                            ->body($record->user_name ? "$record->user_name has been deleted." : 'User has been deleted.')
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
                        redirect()->route('filament.admin.resources.api-users.index');
                        Notification::make()
                            ->success()
                            ->title('User deleted')
                            ->body($record->user_name ? "$record->user_name has been deleted successfully.": 'User has been deleted successfully.')
                            ->send();
                    })
                    ->requiresConfirmation()
                    ->modalHeading('Delete User')
                    ->modalDescription('Are you sure you want to delete this user?')
                    ->modalSubmitActionLabel('Delete'),
                Tables\Actions\ForceDeleteAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Force deleted successfully')
                            ->body($record->user_name ? "$record->user_name has been deleted from DB." : 'User has been deleted from DB.')
                            ->success()
                            ->sendToDatabase(auth()->user());
                        $record->forceDelete();
                        redirect()->route('filament.admin.resources.categories.index');
                        Notification::make()
                            ->success()
                            ->title('User deleted')
                            ->body('User has been deleted successfully.')
                            ->send();
                    })
                    ->requiresConfirmation()
                    ->modalHeading('Force Delete User')
                    ->modalDescription('Are you sure you want to force delete this user?')
                    ->modalSubmitActionLabel('Force Delete'),
                Tables\Actions\RestoreAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Restored successfully')
                            ->body($record->user_name ? "$record->user_name has been restored." : 'User has been restored.')
                            ->success()
                            ->sendToDatabase(auth()->user());
                        $record->restore();
                        redirect()->route('filament.admin.resources.api-users.index');
                        Notification::make()
                            ->success()
                            ->title('User restored')
                            ->body('User has been restored successfully.')
                            ->send();
                    }),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make('delete')
                        ->action(function ($records) {

                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Deleted successfully')
                                    ->body($record->user_name ? "$record->user_name has been deleted." : 'User has been deleted.')
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
                                redirect()->route('filament.admin.resources.api-users.index');
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
                                    ->body($record->user_name ? "$record->user_name has been deleted from DB." : 'User has been deleted from DB.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->forceDelete();
                                redirect()->route('filament.admin.resources.api-users.index');
                                Notification::make()
                                    ->success()
                                    ->title('User deleted')
                                    ->body('User has been deleted successfully.')
                                    ->send();
                            }
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Force Delete Users')
                        ->modalDescription('Are you sure you want to force delete these users?')
                        ->modalSubmitActionLabel('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->action(function ($records) {

                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Restored successfully')
                                    ->body($record->user_name ? "$record->user_name has been restored." : 'User has been restored.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $records->restore();
                                redirect()->route('filament.admin.resources.api-users.index');
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

    public static function getRelations(): array
    {
        return [
            DeliveryAddressesRelationManager::class,
//            OrdersRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListApiUsers::route('/'),
            'create' => Pages\CreateApiUser::route('/create'),
            'view' => Pages\ViewApiUser::route('/{record}'),
            'edit' => Pages\EditApiUser::route('/{record}/edit'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
