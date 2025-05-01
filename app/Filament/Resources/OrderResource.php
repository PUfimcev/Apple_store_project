<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderResource\Pages;
use App\Filament\Resources\OrderResource\RelationManagers;
use App\Filament\Resources\OrderResource\RelationManagers\ApiUserRelationManager;
use App\Filament\Resources\OrderResource\RelationManagers\ProductVariantsRelationManager;
use App\Models\ApiUser;
use App\Models\DeliveryAddress;
use App\Models\Order;
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

class OrderResource extends Resource
{
    protected static ?string $model = Order::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_order');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_order');
    }

    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_order');
    }

    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_order');
    }

    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_order');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_order');
    }

    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_order');
    }

    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_order');
    }

    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_order');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_order');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_order');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_order');
    }

    public static function canViewTrashed(Model $record): bool
    {
        return auth()->user()->can('view_trashed_order');
    }

    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_order');
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('api_user_id')
                    ->label('Consumer')
                    ->formatStateUsing(fn($record) => $record ? $record->apiUser->first_name : "")
                    ->disabled(fn($record) => $record !== null)
                    ->visible(fn($record) => $record !== null),
                Forms\Components\TextInput::make('total_amount')
                    ->disabled()
                    ->numeric()
                    ->visible(fn($record) => $record !== null),
                Forms\Components\Select::make('delivery_address_id')
                    ->relationship('deliveryAddress', 'delivery_address_id')
                    ->options(fn($record) => ApiUser::where('id', $record->api_user_id)
                        ->first()?->deliveryAddresses->pluck('city', 'id')->toArray())
                    ->visible(fn($record) => $record !== null)
                    ->required(),
                Forms\Components\Select::make('delivery_address_id')
                    ->options(fn($record) => ApiUser::where('id', $record->api_user_id)
                        ->first()?->deliveryAddresses->pluck('address', 'id')->toArray())
                    ->visible(fn($record) => $record !== null)
                    ->required(),
                Forms\Components\TextInput::make('deliveryAddress')
                    ->label('Address')
                    ->visible(fn($record) => $record === null)
                    ->required(),
                Forms\Components\Select::make('payment_method')
                    ->label('Payment Method')
                    ->options([
                        'cash' => 'Cash',
                        'card' => 'Card',
                    ]),
                Forms\Components\Select::make('status')
                    ->options([
                        'pending' => 'Pending',
                        'processing' => 'Processing',
                        'completed' => 'Completed',
                        'cancelled' => 'Cancelled',
                    ])
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('apiUser.user_name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total_amount')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('payment_method')
                    ->searchable(),
                Tables\Columns\TextColumn::make('deliveryAddress.address')
                    ->searchable(),
                Tables\Columns\TextColumn::make('status')
                    ->color(fn($record) => match ($record->status->value) {
                        'pending' => 'warning',
                        'processing' => 'info',
                        'completed' => 'success',
                        'cancelled' => 'danger',
                        default => 'gray'
                    })
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
                Tables\Filters\SelectFilter::make('status')
                    ->label('Status filter')
                    ->options([
                        'pending' => 'Pending',
                        'processing' => 'Processing',
                        'completed' => 'Completed',
                        'cancelled' => 'Cancelled',
                    ])
                    ->multiple()
                    ->default(['pending']),
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Deleted successfully')
                                    ->body('Order has been deleted.')
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
                                redirect()->route('filament.admin.resources.orders.index');
                                Notification::make()
                                    ->success()
                                    ->title('Order deleted')
                                    ->body('The Order has been deleted successfully.')
                                    ->send();
                            }
                        }),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Force deleted successfully')
                                    ->body( 'Order has been deleted from DB.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->forceDelete();
                                redirect()->route('filament.admin.resources.orders.index');
                                Notification::make()
                                    ->success()
                                    ->title('Order deleted')
                                    ->body('The Order has been deleted successfully.')
                                    ->send();
                            }
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Force Delete Category')
                        ->modalDescription('Are you sure you want to force delete this category?')
                        ->modalSubmitActionLabel('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Restored successfully')
                                    ->body( 'Order has been restored.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->restore();
                                redirect()->route('filament.admin.resources.orders.index');
                                Notification::make()
                                    ->success()
                                    ->title('Order restored')
                                    ->body('The Order has been restored successfully.')
                                    ->send();
                            }
                        }),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            ProductVariantsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListOrders::route('/'),
            'create' => Pages\CreateOrder::route('/create'),
            'view' => Pages\ViewOrder::route('/{record}'),
            'edit' => Pages\EditOrder::route('/{record}/edit'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        $count = static::getModel()::whereIn('status', ['Pending'])->count();

        return $count > 0 ? "$count New" : "0 New";
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
