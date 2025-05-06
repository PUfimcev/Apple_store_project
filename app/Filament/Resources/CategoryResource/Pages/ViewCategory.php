<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use App\Filament\Resources\CategoryResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Components\ImageEntry;
use Filament\Support\Enums\FontWeight;

class ViewCategory extends ViewRecord
{
    protected static string $resource = CategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.categories.index')),
            Actions\EditAction::make(),
            Actions\DeleteAction::make(),
        ];
    }

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist->schema([
            TextEntry::make('id')->label('ID')->weight(FontWeight::Bold),
            TextEntry::make('parent_id')->label('Parent id')->weight(FontWeight::Bold),
            TextEntry::make('parent_name')->label('Parent category name')->weight(FontWeight::Bold),
            TextEntry::make('slug')->label('URL')->weight(FontWeight::Bold),
            TextEntry::make('name')->label('Name')->weight(FontWeight::Bold),
            TextEntry::make('is_new')->label('Is new')->weight(FontWeight::Bold)->formatStateUsing(fn ($state) => $state ? 'yes' : 'no'),
            TextEntry::make('description')->label('Description')->weight(FontWeight::Bold),
            TextEntry::make('deleted_at')->label('Deleting date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('updated_at')->label('Updating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('created_at')->label('Creating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            ImageEntry::make('image_url')
                ->width(200)
                ->height(200)
            ->columnSpanFull(),
        ]);
    }

}
