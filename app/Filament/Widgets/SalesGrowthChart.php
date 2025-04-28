<?php

namespace App\Filament\Widgets;

use App\Models\Order;
use Filament\Widgets\ChartWidget;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;
use Carbon\Carbon;

class SalesGrowthChart extends ChartWidget
{
    protected static ?string $heading = 'Sales Growth';

    protected static ?int $sort = 5;


    protected function getData(): array
    {
        $activeFilter = $this->filter;

        $data = Trend::model(Order::class);

        $label = collect();

        if ($activeFilter === 'year') {
            $data = $data->between(
                start: now()->startOfYear(),
                end: now(),
            )->perMonth();
        }

        if ($activeFilter === 'month') {
            $data = $data->between(
                start: now()->startOfMonth(),
                end: now(),
            )->perWeek();
        }

        if ($activeFilter === 'week') {
            $data = $data->between(
                start: now()->startOfWeek(),
                end: now(),
            )->perDay();
        }

        if ($activeFilter === 'today') {
            $data = $data->between(
                start: now()->startOfDay(),
                end: now()->endOfDay(),
            )->perHour();
        }
        $data = $data->sum('total_amount');

        if ($activeFilter === 'year') {$label = $data->map(fn(TrendValue $value) => Carbon::parse($value->date)->format('M Y'));}
            if ($activeFilter === 'month') {$label = $data->map(fn(TrendValue $value) => $value->date);}
        if ($activeFilter === 'week') {$label = $data->map(fn(TrendValue $value) => Carbon::parse($value->date)->format('D'));}
        if ($activeFilter === 'today') {$label = $data->map(fn(TrendValue $value) => Carbon::parse($value->date)->format('H'));}


        return [
            'datasets' => [
                [
                    'label' => 'Sales Growth, $',
                    'data' => $data->map(fn(TrendValue $value) => $value->aggregate),
                ],
            ],
            'labels' => $label,

        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }

    public ?string $filter = 'year';

    protected function getFilters(): ?array
    {
        return [
            'today' => 'Today',
            'week' => 'Last week',
            'month' => 'Last month',
            'year' => 'This year',
        ];
    }
}
