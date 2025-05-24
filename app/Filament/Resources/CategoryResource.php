<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CategoryResource\Pages;
use App\Filament\Resources\CategoryResource\RelationManagers\SubcategoriesRelationManager;
use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Notifications\Actions\Action;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Grouping\Group;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Storage;


class CategoryResource extends Resource
{
    protected static ?string $navigationGroup = 'Products';
    protected static ?string $model = Category::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $recordTitleAttribute = 'name';

    public static function canCreate(): bool
    {
        return auth()->user()->can('create_category');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->can('update_category');
    }
    public static function canDelete(Model $record): bool
    {
        return auth()->user()->can('delete_category');
    }
    public static function canViewAny(): bool
    {
        return auth()->check() && auth()->user()->can('view_any_category');
    }
    public static function canView(Model $record): bool
    {
        return auth()->user()->can('view_category');
    }

    public static function canForceDelete(Model $record): bool
    {
        return auth()->user()->can('force_delete_category');
    }
    public static function canRestore(Model $record): bool
    {
        return auth()->user()->can('restore_category');
    }
    public static function canRestoreAny(): bool
    {
        return auth()->user()->can('restore_any_category');
    }
    public static function canDeleteAny(): bool
    {
        return auth()->user()->can('delete_any_category');
    }

    public static function canReplicate(Model $record): bool
    {
        return auth()->user()->can('replicate_category');
    }

    public static function canReorder(): bool
    {
        return auth()->user()->can('reorder_category');
    }

    public static function canViewAnyTrashed(): bool
    {
        return auth()->user()->can('view_any_trashed_category');
    }

    public static function canViewTrashed(Model $record): bool
    {
        return auth()->user()->can('view_trashed_category');
    }
    public static function canForceDeleteAny(): bool
    {
        return auth()->user()->can('force_delete_any_category');
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema(components: [
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('category')
                    ->label('Parent Category')
                    ->relationship('category', 'name', modifyQueryUsing: fn (Builder $query) => $query->whereNull('parent_id', )
                    )
                    ->nullable(),
                Forms\Components\TextInput::make('slug')
                    ->label('Pathname')
                    ->required()
                    ->maxLength(255),
                Forms\Components\ToggleButtons::make('is_new')
                    ->label('Is a new category?')
                    ->boolean()
                    ->grouped()
                    ->helperText('This field is used to mark the category as new.'),
                Forms\Components\Textarea::make('description')
                    ->columnSpanFull(),
                Forms\Components\FileUpload::make('image_url')
//                    ->disabled(fn($get) => $get('parent_id') === null)
                    ->image()
                    ->directory('categories_images')
                    ->disk('public')
                    ->visibility('public')
                    ->deleteUploadedFileUsing(fn ($state, $record) => $state ? Storage::disk('public')->delete( $state) : null),
            ]);
    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('parent_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('slug')
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\ImageColumn::make('image_url')
                    ->wrap(),
                Tables\Columns\ToggleColumn::make('is_new'),
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
                    Group::make('parent_id')
                        ->getDescriptionFromRecordUsing(fn (Category $record): string => $record->category->name)
                    ->label('Parent Category'),
                    'created_at',
                ]
            )
//            ->groupingSettingsInDropdownOnDesktop()
            ->filters([
                Tables\Filters\TrashedFilter::make(),
                Tables\Filters\SelectFilter::make('parent_id')
                    ->label('Category filter')
                    ->relationship('category', 'name', fn(Builder $query) => $query->whereNull('parent_id'))
                    ->searchable()
                    ->preload()
                    ->multiple(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Deleted successfully')
                            ->body($record ? "Category $record->name has been deleted." : 'Category has been deleted.')
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
                        redirect()->route('filament.admin.resources.categories.index');
                        Notification::make()
                            ->success()
                            ->title('Category deleted')
                            ->body('The Category has been deleted successfully.')
                            ->send();
                    })
                    ->requiresConfirmation()
                    ->modalHeading('Delete Category')
                    ->modalDescription('Are you sure you want to delete this category?')
                    ->modalSubmitActionLabel('Delete'),
                Tables\Actions\ForceDeleteAction::make()
                    ->action(function ($record) {
                        Notification::make()
                            ->title('Force deleted successfully')
                            ->body($record ? "Category $record->name has been deleted from DB." : 'Category has been deleted from DB.')
                            ->success()
                            ->sendToDatabase(auth()->user());
                        $record->forceDelete();
                        redirect()->route('filament.admin.resources.categories.index');
                        Notification::make()
                            ->success()
                            ->title('Category deleted')
                            ->body('The Category has been deleted successfully.')
                            ->send();
                    })
                    ->requiresConfirmation()
                    ->modalHeading('Force Delete Category')
                    ->modalDescription('Are you sure you want to force delete this category?')
                    ->modalSubmitActionLabel('Force Delete'),
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
                                    ->body($record ? "Category $record->name has been deleted." : 'Category has been deleted.')
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
                                redirect()->route('filament.admin.resources.categories.index');
                                Notification::make()
                                    ->success()
                                    ->title('Category deleted')
                                    ->body('The Category has been deleted successfully.')
                                    ->send();
                            }
                        }),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

                                Notification::make()
                                    ->title('Force deleted successfully')
                                    ->body($record ? "Category $record->name has been deleted from DB.": 'Category has been deleted from DB.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->forceDelete();
                                redirect()->route('filament.admin.resources.categories.index');
                                Notification::make()
                                    ->success()
                                    ->title('Category deleted')
                                    ->body('The Category has been deleted successfully.')
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
                                    ->body($record ? "Category" . $record->name . " has been restored." : 'Category has been restored.')
                                    ->success()
                                    ->sendToDatabase(auth()->user());
                                $record->restore();
                                redirect()->route('filament.admin.resources.categories.index');
                                Notification::make()
                                    ->success()
                                    ->title('Category restored')
                                    ->body('The Category has been restored successfully.')
                                    ->send();
                            }
                        }),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            SubcategoriesRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListCategories::route('/'),
            'create' => Pages\CreateCategory::route('/create'),
            'view' => Pages\ViewCategory::route('/{record}'),
            'edit' => Pages\EditCategory::route('/{record}/edit'),
        ];
    }

    public static function getGloballySearchableAttributes(): array
    {
        return ['name', 'description'];
    }


    public function isReadOnly(): bool
    {
        return false;
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
