<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use App\Filament\Resources\CategoryResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Components\ImageEntry;

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
            TextEntry::make('id')->label('ID'),
            TextEntry::make('parent_id')->label('Parent id'),
            TextEntry::make('parent_name')->label('Parent category name'),
            TextEntry::make('slug')->label('URL'),
            TextEntry::make('name')->label('Name'),
            TextEntry::make('description')->label('Description'),
            TextEntry::make('deleted_at')->label('Deleting date')->dateTime('d.m.Y H:i'),
            TextEntry::make('updated_at')->label('Updating date')->dateTime('d.m.Y H:i'),
            TextEntry::make('created_at')->label('Creating date')->dateTime('d.m.Y H:i'),
            ImageEntry::make('image_url')
                ->width(200)
                ->height(200)
            ->columnSpanFull(),
        ]);
    }

}
