<?php

namespace App\Filament\Resources\CategoryResource\RelationManagers;

use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Storage;

class SubcategoriesRelationManager extends RelationManager
{
    protected static string $relationship = 'subcategories';
    protected static ?string $recordTitleAttribute = 'name';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('parent_id')
                    ->label('Parent Category')
                    ->relationship('category', 'name')
                    ->options(Category::whereNull('parent_id')->pluck('name', 'id')->toArray())
                    ->searchable()
                    ->nullable()
                    ->default(fn() => $this->ownerRecord->id),
                Forms\Components\TextInput::make('slug')
                    ->label('Pathname')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('description')
                    ->columnSpanFull(),
                Forms\Components\ToggleButtons::make('is_new')
                    ->label('Is a new category?')
                    ->boolean()
                    ->grouped()
                    ->helperText('This field is used to mark the category as new.'),
                Forms\Components\FileUpload::make('image_url')
                    ->disabled(fn($get) => $get('parent_id') === null)
                    ->image()
                    ->directory('categories_images')
                    ->disk('public')
                    ->visibility('public')
                    ->dehydrateStateUsing(fn($state) => Storage::url($state))
                    ->deleteUploadedFileUsing(fn($state, $record) => $state ? Storage::disk('public')->delete('products_images/' . $state) : null),

            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('slug'),
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
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->url(fn($record) => route('filament.admin.resources.categories.view', $record->id)),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make()
                    ->action(function ($record) {
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
                    ->modalDescription('Are you sure you want to delete this category?')
                    ->modalSubmitActionLabel('Delete'),
                Tables\Actions\ForceDeleteAction::make()
                    ->action(function ($record) {
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
                            }
                        }),
                    Tables\Actions\ForceDeleteBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {

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
                            }
                        })
                        ->modalHeading('Force Delete Category')
                        ->modalDescription('Are you sure you want to force delete this category?')
                        ->modalSubmitActionLabel('Force Delete'),
                    Tables\Actions\RestoreBulkAction::make()
                        ->requiresConfirmation()
                        ->action(function ($records) {
                            foreach ($records as $record) {
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
                            }
                        }),
                ]),
            ])
            ->modifyQueryUsing(fn(Builder $query) => $query->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]));
    }

}
