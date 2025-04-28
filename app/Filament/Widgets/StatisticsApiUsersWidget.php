<?php

namespace App\Filament\Widgets;

use App\Models\ApiUser;
use App\Models\Order;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatisticsApiUsersWidget extends BaseWidget
{
    protected static ?int $sort = 2;

    protected function getStats(): array
    {
        return [
            Stat::make('Total consumers', ApiUser::count())
                ->icon('heroicon-o-users')
                ->url(route('filament.admin.resources.api-users.index')),
            Stat::make('Orders', Order::count())->icon('heroicon-o-shopping-cart'),
            Stat::make('Revenue', '$' . Order::sum('total_amount'))->icon('heroicon-o-banknotes'),
        ];
    }
}
