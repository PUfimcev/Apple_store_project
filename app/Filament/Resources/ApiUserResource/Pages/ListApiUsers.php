<?php

namespace App\Filament\Resources\ApiUserResource\Pages;

use App\Filament\Resources\ApiUserResource;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Eloquent\Builder;

class ListApiUsers extends ListRecords
{
    protected static string $resource = ApiUserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    /**
     * @return array
     */
    public function getTabs(): array
    {
        return [
            'all' => Tab::make('All customers'),
            'subscribed' => Tab::make('Subscribed customers')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('is_subscribed', 1)),
            'Unsubscribed' => Tab::make('Unsubscribed customers')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('is_subscribed', 0)),
        ];
    }
}
