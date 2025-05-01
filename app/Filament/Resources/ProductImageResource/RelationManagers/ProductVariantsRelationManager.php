<?php

namespace App\Filament\Resources\ProductImageResource\RelationManagers;

use App\Models\ProductVariant;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;

class ProductVariantsRelationManager extends RelationManager
{
    protected static string $relationship = 'productVariants';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\TextColumn::make('properties')
                    ->label('Properties')
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\ImageColumn::make('images.url')
                    ->label('Images')
                    ->disk('public')
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
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
                    ]),
            ])
            ->actions([
                Tables\Actions\DetachAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DetachBulkAction::make(),
                ]),
            ]);
    }
}
