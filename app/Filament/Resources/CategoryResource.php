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
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Contracts\Support\Htmlable;


class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Form $form): Form
    {
        return $form
            ->schema(components: [
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('parent_id')
                    ->label('Parent Category')
                    ->relationship('category', 'name')
                    ->options(Category::whereNull('parent_id')->pluck('name', 'id')->toArray())
                    ->searchable()
                    ->nullable(),
                Forms\Components\TextInput::make('slug')
                    ->label('Pathname')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('description')
                    ->columnSpanFull(),
                Forms\Components\FileUpload::make('image_url')
                    ->disabled(fn($get) => $get('parent_id') === null)
                    ->image(),
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
                Tables\Columns\ImageColumn::make('image_url'),
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
                    ->action(function (Category $record) {
                        Notification::make()
                            ->title('Deleted successfully')
                            ->body("Category $record->name has been deleted.")
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
                    ->modalSubheading('Are you sure you want to delete this category?')
                    ->button('Delete'),
                Tables\Actions\ForceDeleteAction::make()
                    ->action(function (Category $record) {
                        Notification::make()
                            ->title('Force deleted successfully')
                            ->body("Category $record->name has been deleted from DB.")
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
                    ->modalSubheading('Are you sure you want to force delete this category?')
                    ->modalButton('Force Delete'),
                Tables\Actions\RestoreAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function (Collection $record) {
                            Notification::make()
                                ->title('Deleted successfully')
                                ->body("Category $record->name has been deleted.")
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
                            $records->each->delete();
                            redirect()->route('filament.admin.resources.categories.index');
                            Notification::make()
                                ->success()
                                ->title('Category deleted')
                                ->body('The Category has been deleted successfully.')
                                ->send();
                        }),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function (Collection $record) {
                            Notification::make()
                                ->title('Force deleted successfully')
                                ->body("Category $record->name has been deleted from DB.")
                                ->success()
                                ->sendToDatabase(auth()->user());
                            $records->each->forceDelete();
                            redirect()->route('filament.admin.resources.categories.index');
                            Notification::make()
                                ->success()
                                ->title('Category deleted')
                                ->body('The Category has been deleted successfully.')
                                ->send();
                        })
                        ->requiresConfirmation()
                        ->modalHeading('Force Delete Category')
                        ->modalSubheading('Are you sure you want to force delete this category?')
                        ->modalButton('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->action(function (Collection $record) {
                            Notification::make()
                                ->title('Restored successfully')
                                ->body("Category $record->name has been restored.")
                                ->success()
                                ->sendToDatabase(auth()->user());
                            $records->each->restore();
                            redirect()->route('filament.admin.resources.categories.index');
                            Notification::make()
                                ->success()
                                ->title('Category restored')
                                ->body('The Category has been restored successfully.')
                                ->send();
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

    public static function getGlobalSearchResultTitle(Model $record): string|Htmlable
    {
        return $record->name;
    }


    public function isReadOnly(): bool
    {
        return false;
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }

}
