<?php

namespace App\Filament\Widgets;

use App\Models\ApiUser;
use Carbon\Carbon;
use Filament\Widgets\ChartWidget;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;

class ConsumerGrowthChart extends ChartWidget
{
    protected static ?string $heading = 'Consumer\'s Growth';

    protected static ?int $sort = 5;

    protected function getData(): array
    {
        $activeFilter = $this->filter;

        $data = Trend::model(ApiUser::class);

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
        $data = $data->count();

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
        return 'line';
    }

    public ?string $filter = 'month';

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
