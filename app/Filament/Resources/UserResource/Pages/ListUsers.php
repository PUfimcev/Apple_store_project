<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Eloquent\Builder;

class ListUsers extends ListRecords
{
    protected static string $resource = UserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTabs(): array
    {
        return [
            'all' => Tab::make('All admins'),
            'superadmin' => Tab::make('Superadmin')
                ->modifyQueryUsing(fn ($query) => $query->whereHas('roles',  function ($query) {
                    $query->where('name', 'super_admin');
                })),
            'admin' => Tab::make('Admins')
                ->modifyQueryUsing(fn ($query) => $query->whereHas('roles',  function ($query) {
                    $query->where('name', 'admin');
                })),
        ];
    }
}
