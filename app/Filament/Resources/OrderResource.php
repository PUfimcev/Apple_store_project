<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderResource\Pages;
use App\Filament\Resources\OrderResource\RelationManagers;
use App\Filament\Resources\OrderResource\RelationManagers\ApiUserRelationManager;
use App\Filament\Resources\OrderResource\RelationManagers\ProductVariantsRelationManager;
use App\Models\ApiUser;
use App\Models\Order;
use Filament\Forms;
use Filament\Forms\Form;
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
                Forms\Components\Select::make('api_user_id')
                    ->relationship('apiUser', 'user_name')
                    ->disabled(),
                Forms\Components\TextInput::make('total_amount')
                    ->disabled()
                    ->numeric(),
                Forms\Components\TextInput::make('payment_method')
                    ->disabled()
                    ->maxLength(255)
                    ->default('credit_card'),
                Forms\Components\Select::make('delivery_address_id')
                    ->relationship('deliveryAddress', 'address')
                    ->required(),
                Forms\Components\Select::make('delivery_address_id')
                    ->relationship('deliveryAddress', 'city')
                    ->required(),
                Forms\Components\Select::make('status')
                    ->options([])
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
                Tables\Columns\TextColumn::make('status'),
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
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            ApiUserRelationManager::class,
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

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
