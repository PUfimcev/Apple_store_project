<?php

namespace App\Filament\Widgets;

use App\Models\Order;
use App\Models\ProductVariant;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class BestSellersTable extends BaseWidget
{
    protected static ?int $sort = 3;

    protected string|int|array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        $bestSellersIds = Order::with('ProductVariants')->where('status', 'completed')->get()
            ->flatMap->ProductVariants
            ->mapToGroups(fn($item) => [$item->id => $item->pivot->quantity])
            ->map->sum()
            ->sortDesc()
            ->take(5)
            ->keys()
            ->toArray();

//        $bestSellersAmount = Order::with('ProductVariants')->get()
//            ->flatMap->ProductVariants
//            ->mapToGroups(fn($item) => [$item->id => $item->pivot->quantity])
//            ->map->sum()
//            ->sortDesc()
//            ->take(5);

        return $table
            ->query(
                ProductVariant::with(['orders', 'images'])->whereIn('id', $bestSellersIds)
            )
            ->paginated(false)
            ->columns([
                TextColumn::make('name')->label('Product Name'),
                TextColumn::make('id')->label('Quantity')
                    ->formatStateUsing(fn($state) => ProductVariant::find($state)->orders->sum('pivot.quantity')),
                TextColumn::make('orders')->label('Last Price')
                    ->getStateUsing(fn($record) => $record->orders->sortByDesc('created_at')->first()->pivot->price),
                ImageColumn::make('images.url')->label('Product Image')
                    ->getStateUsing(fn($record) => $record->images->first()->url),
                TextColumn::make('stock')->label('Stocks'),
            ]);
    }
}
