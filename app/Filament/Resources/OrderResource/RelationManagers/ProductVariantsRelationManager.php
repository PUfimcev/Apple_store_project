<?php

namespace App\Filament\Resources\OrderResource\RelationManagers;

use App\Models\Order;
use App\Models\ProductVariant;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ProductVariantsRelationManager extends RelationManager
{
    protected static string $relationship = 'productVariants';

    public function form(Form $form): Form
    {
        return $form
            ->schema(array(
                Forms\Components\Select::make('product_variant_id')
                    ->options(fn() => ProductVariant::pluck('name', 'id'))
                    ->live()
                    ->searchable()
                    ->required()
                    ->afterStateUpdated(function ($state, callable $set) {
                        $set('properties', $state ? implode(', ', ProductVariant::find($state)->properties) : []);
                    }),

                Forms\Components\Textarea::make('properties')
                    ->label('Properties')
                    ->readonly()
                    ->dehydrated(false),
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
                Tables\Columns\TextColumn::make('properties')
                    ->label('Properties')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\ImageColumn::make('images.url')
                    ->label('Images')
                    ->limit(3)
                    ->limitedRemainingText()
                    ->disk('public')
                    ->toggleable(isToggledHiddenByDefault: true),

            ])
            ->filters([
            ])
            ->headerActions([
                Tables\Actions\AttachAction::make()
                    ->form([
                        Select::make('recordId')
                            ->label('Product Variant')
                            ->options(fn() => ProductVariant::pluck('name', 'id'))
                            ->live()
                            ->searchable()
                            ->required()
                            ->afterStateUpdated(function ($state, callable $set) {
                                $set('properties', $state ? implode(', ', ProductVariant::find($state)->properties) : []);
                                $set('price', $state ? (ProductVariant::find($state)->discount_price ?? ProductVariant::find($state)->price) : '');
                            })
                            ->dehydrateStateUsing(fn($state) => [
                                'recordId' => $state,
                            ]),
                        Forms\Components\Textarea::make('properties')
                            ->label('Properties')
                            ->rows(3)
                            ->readonly()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('quantity')
                            ->required(),
                        Forms\Components\TextInput::make('price')
                            ->readonly(),

                    ]),
            ])
            ->actions([
                Tables\Actions\DetachAction::make()
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DetachBulkAction::make(),
                ]),
            ])
            ->modifyQueryUsing(fn(Builder $query) => $query->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]));
    }
}
