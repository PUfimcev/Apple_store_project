<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductImageResource\Pages;
use App\Filament\Resources\ProductImageResource\Pages\EditProductImage;
use App\Filament\Resources\ProductImageResource\RelationManagers\ProductVariantsRelationManager;
use App\Models\ProductImage;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Infolists\Components\TextEntry;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Support\Enums\FontWeight;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class ProductImageResource extends Resource
{
    protected static ?string $model = ProductImage::class;

    protected static ?string $navigationGroup = 'Products';

    protected static ?string $navigationIcon = 'heroicon-o-photo';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_product::image');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_product::image');
    }

    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_product::image');
    }

    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_product::image');
    }

    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_product::image');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_product::image');
    }

    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_product::image');
    }

    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_product::image');
    }

    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_product::image');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_product::image');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_product::image');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_product::image');
    }

    public static function canViewTrashed(Model $record): bool
    {
        return auth()->user()->can('view_trashed_product::image');
    }

    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_product::image');
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\FileUpload::make('Image')
                    ->image()
                    ->directory('product_variant_images')
                    ->multiple()
                    ->disk('public')
                    ->visibility('public')
                    ->deleteUploadedFileUsing(fn ($state, $record) =>
                    collect($state)->each(fn ($file) => Storage::disk('public')->delete('product_variant_images/' . $file))
                    )
                    ->panelLayout('grid')
                    ->reorderable()
                    ->formatStateUsing(fn ($state) => $state ? Storage::url($state) : null),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('url')
                    ->label('Images')
                    ->disk('public')
                    ->height(50),
                Tables\Columns\TextColumn::make('productVariants.name')
                    ->label('Product Variants')
                    ->sortable()
                    ->weight(FontWeight::Bold)
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
            ->groups(
                [
                    'updated_at',
                ]
            )
            ->filters([
                Tables\Filters\SelectFilter::make('Product mane')
                    ->label('Products filter')
                    ->relationship('productVariants', 'name', fn(Builder $query) => $query->withTrashed())
                    ->searchable()
                    ->preload()
                    ->multiple(),
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
                                    ->body('Image has been deleted.')
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
                                redirect()->route('filament.admin.resources.product-images.index');
                                Notification::make()
                                    ->success()
                                    ->title('Image deleted')
                                    ->body('The Image has been deleted successfully.')
                                    ->send();
                            }
                        }),
                ]),

            ]);
    }

    public static function getRelations(): array
    {
        return [
            ProductVariantsRelationManager::class
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProductImages::route('/'),
            'create' => Pages\CreateProductImage::route('/create'),
            'view' => Pages\ViewProductImage::route('/{record}'),
            'edit' => Pages\EditProductImage::route('/{record}/edit'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
}
