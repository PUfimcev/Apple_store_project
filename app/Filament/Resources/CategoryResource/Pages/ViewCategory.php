<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use App\Filament\Resources\CategoryResource;
use App\Models\Category;
use Filament\Actions;
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
            TextEntry::make('name')->label('Название'),
            TextEntry::make('description')->label('Описание'),
            TextEntry::make('deleted_at')->label('Дата удаления')->dateTime('d.m.Y H:i'),
            TextEntry::make('updated_at')->label('Дата обновления')->dateTime('d.m.Y H:i'),
            TextEntry::make('created_at')->label('Дата создания')->dateTime('d.m.Y H:i'),
            ImageEntry::make('image_url')
            ->columnSpanFull(),
        ]);
    }

}
