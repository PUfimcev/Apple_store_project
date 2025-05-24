<?php

namespace App\Filament\Resources\ProductResource\RelationManagers;

use App\Models\Product;
use App\Models\ProductVariant;
use Filament\Forms;
use Filament\Forms\Components\KeyValue;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Notifications\Actions\Action;
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
            ->schema([
                Forms\Components\Hidden::make('product_id')
                    ->default(fn() => $this->getOwnerRecord()->id),
                Forms\Components\TextInput::make('name')
                    ->label('Name')
                    ->required()
                    ->maxLength(255)
                    ->live()
                    ->afterStateUpdated(fn($state, callable $set, $get) =>
                    $set('slug', $state && $get('sku') ? Str::slug($state . '-' . $get('sku')) : '')
                    ),
                Forms\Components\TextInput::make('slug')
                    ->unique(ignoreRecord: true)
                    ->label('Slug')
                    ->readonly()
                    ->maxLength(255),
                Forms\Components\TextInput::make('sku')
                    ->label('SKU')
                    ->unique('product_variants', 'sku', ignoreRecord: true)
                    ->required()
                    ->maxLength(255)
                    ->afterStateUpdated(fn($state, callable $set, $get) =>
                    $set('slug', $get('name') && $state ? Str::slug($get('name') . '-' . $state) : '')),
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix(''),
                Forms\Components\TextInput::make('discount_price')
                    ->numeric(),
                Forms\Components\TextInput::make('stock')
                    ->required()
                    ->numeric(),
                Forms\Components\Textarea::make('properties')
                    ->label('Properties')
                    ->columnSpanFull()
                    ->default(fn() => json_encode(Product::find($this->getOwnerRecord()->id)->productVariants->first()->properties ?? [], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)
                    )
                    ->maxLength(3000)
                    ->rows(6)
                    ->formatStateUsing(fn($state) => is_array($state) ? json_encode($state, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE) : $state)
                    ->dehydrateStateUsing(fn($state) => is_string($state) ? $state : json_encode($state, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('slug')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('sku')
                    ->searchable(),
                Tables\Columns\TextColumn::make('properties')
                    ->searchable()
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('price')
                    ->sortable(),
                Tables\Columns\TextColumn::make('discount_price')
                    ->sortable(),
                Tables\Columns\TextColumn::make('stock'),
                Tables\Columns\ImageColumn::make('images.url')
                    ->label('Images')
                    ->disk('public')
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->stacked()
                    ->wrap()
                    ->height(50),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->modalHeading('Product Variant Details'),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\ForceDeleteAction::make(),
                Tables\Actions\RestoreAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Deleted successfully')
                                    ->body('Product has been deleted.')
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
                                    ->title('Product deleted')
                                    ->body('The Product has been deleted successfully.')
                                    ->send();
                            }
                        }),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Force deleted successfully')
                                    ->body('Product has been deleted from DB.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->forceDelete();
                                redirect()->route('filament.admin.resources.orders.index');
                                Notification::make()
                                    ->success()
                                    ->title('Product deleted')
                                    ->body('The Product has been deleted successfully.')
                                    ->send();
                            }
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Force Delete Category')
                        ->modalDescription('Are you sure you want to force delete this product?')
                        ->modalSubmitActionLabel('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Restored successfully')
                                    ->body('Product has been restored.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->restore();
                                redirect()->route('filament.admin.resources.orders.index');
                                Notification::make()
                                    ->success()
                                    ->title('Product restored')
                                    ->body('The Product has been restored successfully.')
                                    ->send();
                            }
                        }),
                ]),
            ])
            ->modifyQueryUsing(fn(Builder $query) => $query->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]));
    }
}
