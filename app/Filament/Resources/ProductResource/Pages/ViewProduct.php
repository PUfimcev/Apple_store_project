<?php

namespace App\Filament\Resources\ProductResource\Pages;

use App\Filament\Resources\ProductResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
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
                ->formatStateUsing(fn($record) => "<strong>{$record->category->name}</strong>")
                ->html(),
            TextEntry::make('slug')
                ->label('Slug')
                ->formatStateUsing(fn($state) => "<strong>{$state}</strong>")
                ->html(),
            TextEntry::make('name')
                ->label('Name')
                ->formatStateUsing(fn($state) => "<strong>{$state}</strong>")
                ->html(),
            TextEntry::make('description')
                ->label('Description')
                ->columnSpanFull()
            ->formatStateUsing(fn($state) => "<strong>{$state}</strong>")
            ->html(),
            TextEntry::make('price')
            ->label('Price')
            ->formatStateUsing(fn($state) => "<strong>{$state}</strong>")
            ->html(),
            TextEntry::make('discount_price')
            ->label('Discount')
            ->formatStateUsing(
            fn($state) => "<strong>{$state}</strong>")
            ->html()
            ->visible( fn($state) => $state !== null),
            ImageEntry::make('image_url')
                ->width(200)
                ->height(200)
                ->columnSpanFull(),
            ]);
    }
}
