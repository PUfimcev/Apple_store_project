<?php

namespace App\Filament\Widgets;

use App\Models\Order;

//use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class LatestOrders extends BaseWidget
{
    protected string|int|array $columnSpan = 'full';

    protected static ?int $sort = 4;

    public function table(Table $table): Table
    {
        return $table
            ->query(
                Order::query()->with(['apiUser', 'deliveryAddress'])->orderBy('created_at', 'desc')->limit(4)
            )
            ->paginated(false)
            ->columns([
                TextColumn::make('id'),
                TextColumn::make('apiUser.user_name')->label('Customer')
                    ->sortable(),
                TextColumn::make('apiUser.phone_number')->label('Phone'),
                TextColumn::make('deliveryAddress')->label('Address')
                ->formatStateUsing(fn ($record) => $record->deliveryAddress->address.', '.$record->deliveryAddress->city)
                ,
                TextColumn::make('total_amount')->label('Total sum')
                    ->sortable(),
                TextColumn::make('payment_method')
                    ->label('Payment')
                    ->color(fn($record) =>
                    match ($record->payment_method) {
                        'cash' => 'warning',
                        'card' => 'success',
                        default => 'gray',
                    })
                ->sortable(),
                TextColumn::make('status')
                    ->color(fn ($record) =>
                    match ($record->status->value) {
                        'pending' => 'warning',
                        'completed' => 'success',
                        'cancelled' => 'danger',
                        'processing' => 'info',
                    })
                    ->sortable(),
                TextColumn::make('created_at')
                ->label('Created at')
                ->sortable()
                    ->formatStateUsing(fn ($state) => $state->format('d.m.Y H:i')),

            ]);
    }
}
