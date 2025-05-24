<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers\ProductVariantsRelationManager;
use App\Models\Category;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Grouping\Group;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;
    protected static ?string $navigationGroup = 'Products';
    protected static ?string $navigationIcon = 'heroicon-o-square-3-stack-3d';
    protected static ?string $recordTitleAttribute = 'name';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_product');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_product');
    }

    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_product');
    }

    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_product');
    }

    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_product');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_product');
    }

    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_product');
    }

    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_product');
    }

    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_product');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_product');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_product');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_product');
    }

    public static function canViewTrashed(Model $record): bool
    {
        return auth()->user()->can('view_trashed_product');
    }

    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_product');
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('category_id')
                    ->label('Category')
                    ->relationship('category', 'name', fn(Builder $query) => $query->whereNotNull('parent_id'))
                    ->required(),
                Forms\Components\TextInput::make('slug')
                    ->unique(ignoreRecord: true)
                    ->label('Slug')
                    ->readonly()
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255)
                    ->live()
                    ->afterStateUpdated(fn ($state, callable $set) => $set('slug', $state ? Str::slug($state) : '')),
                Forms\Components\Textarea::make('description')
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix(''),
                Forms\Components\TextInput::make('discount_price')
                    ->numeric(),
                Forms\Components\FileUpload::make('image_url')
                    ->image()
                    ->directory('products_images')
                    ->disk('public')
                    ->visibility('public')
                    ->deleteUploadedFileUsing(fn ($state, $record) =>
                    $state ? Storage::delete($state) : null
                    )
                    ->panelLayout('grid')
                    ->reorderable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('category_id')
                    ->label('Category')
                    ->formatStateUsing(fn($state) => Category::find($state)->name)
                    ->sortable(),
                Tables\Columns\TextColumn::make('slug')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('name')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('price')
                    ->money()
                    ->sortable(),
                Tables\Columns\TextColumn::make('discount_price')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\ImageColumn::make('image_url')
                    ->wrap(),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime('d.m.Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->groups(
                [
                    Group::make('category_id')
                        ->getDescriptionFromRecordUsing(fn (Product $record): string => $record->category->name)
                        ->label('Category'),
                    'updated_at',
                ]
            )
            ->filters([
                Tables\Filters\SelectFilter::make('category_id')
                    ->label('Category filter')
                    ->relationship('category', 'name', fn(Builder $query) => $query->whereNotNull('parent_id'))
                    ->searchable()
                    ->preload()
                    ->multiple(),
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
                                    ->body( 'Product has been deleted from DB.')
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
                                    ->body( 'Product has been restored.')
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'view' => Pages\ViewProduct::route('/{record}'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }

    public static function getGloballySearchableAttributes(): array
    {
        return ['name', 'description'];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
}
