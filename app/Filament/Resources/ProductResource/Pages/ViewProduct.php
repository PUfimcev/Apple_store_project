<?php

namespace App\Filament\Resources\ProductResource\Pages;

use App\Filament\Resources\ProductResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
use Filament\Support\Enums\FontWeight;
use Storage;

class ViewProduct extends ViewRecord
{
    protected static string $resource = ProductResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.products.index')),
            Actions\EditAction::make(),
        ];
    }

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist->schema([
            TextEntry::make('category_id')
                ->label('Category')
                ->weight(FontWeight::Bold),
            TextEntry::make('slug')
                ->label('Slug')
                ->weight(FontWeight::Bold),
            TextEntry::make('name')
                ->label('Name')
                ->weight(FontWeight::Bold),
            TextEntry::make('description')
                ->label('Description')
                ->columnSpanFull()
                ->weight(FontWeight::Bold),
            TextEntry::make('price')
            ->label('Price')
                ->weight(FontWeight::Bold),
            TextEntry::make('discount_price')
            ->label('Discount')
                ->weight(FontWeight::Bold)
            ->visible( fn($state) => $state !== null),
            ImageEntry::make('image_url')
                ->width(200)
                ->height(200)
                ->columnSpanFull(),
            ]);
    }
}
