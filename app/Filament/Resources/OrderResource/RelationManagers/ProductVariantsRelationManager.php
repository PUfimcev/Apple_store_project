<?php

namespace App\Filament\Resources\OrderResource\RelationManagers;

use App\Models\Order;
use App\Models\ProductVariant;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProductVariantsRelationManager extends RelationManager
{
    protected static string $relationship = 'productVariants';

    public function form(Form $form): Form
    {
        return $form
            ->schema(array(
                Forms\Components\Select::make('product_variant_id')
                    ->options(fn() => ProductVariant::pluck('name', 'id')->toArray())
                    ->required(),
                Forms\Components\TextInput::make('quantity')
                    ->required(),
            ));
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\TextColumn::make('sku')
                    ->label('SKU'),
                Tables\Columns\TextColumn::make('quantity'),
                Tables\Columns\TextColumn::make('price'),

            ])
            ->filters([
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Add Product')
                    ->action(function ($data) {

                        $order = Order::find($this->getOwnerRecord()->id);
                        if ($order->productVariants->contains($data['product_variant_id'])) {
                            Notification::make()
                                ->warning()
                                ->title('Product added already!')
                                ->body('Product has already been added.')
                                ->send();
                        } else {

                            $data['price'] = optional(ProductVariant::find($data['product_variant_id']))->discount_price ?? optional(ProductVariant::find($data['product_variant_id']))->price;
                            $productId[] = $data['product_variant_id'];
                            Notification::make()
                                ->title('Product added successfully')
                                ->body('Product has been added from Order.')
                                ->success()
                                ->sendToDatabase(auth()->user());
                            $order->productVariants()->attach($productId, $data);
                            Notification::make()
                                ->success()
                                ->title('Product added')
                                ->body('Product has been added successfully.')
                                ->send();
                        }
                    }),
            ])
            ->actions([
                Tables\Actions\DeleteAction::make()
                    ->action(function ($record) {
                        $orderId = $this->getOwnerRecord()->id;
                        $record->orders()->detach($orderId);
                        Notification::make()
                            ->title('Product deleted successfully')
                            ->body('Product has been deleted from Order.')
                            ->success()
                            ->sendToDatabase(auth()->user());

                        redirect()->route('filament.admin.resources.orders.edit', $orderId);
                        Notification::make()
                            ->success()
                            ->title('Product deleted')
                            ->body('Product has been deleted successfully.')
                            ->send();
                    }),
            ])
            ->modifyQueryUsing(fn(Builder $query) => $query->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]));
    }
}
