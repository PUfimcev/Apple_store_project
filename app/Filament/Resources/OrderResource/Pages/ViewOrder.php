<?php

namespace App\Filament\Resources\OrderResource\Pages;

use App\Filament\Resources\OrderResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
use Filament\Support\Enums\FontWeight;

class ViewOrder extends ViewRecord
{
    protected static string $resource = OrderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.orders.index')),
            Actions\EditAction::make(),
        ];
    }

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist->schema([
            TextEntry::make('id')
                ->label('Order ID')
                ->weight(FontWeight::Bold),
            TextEntry::make('total_amount')->label('Total Amount')
                ->weight(FontWeight::Bold),
            TextEntry::make('api_user_id')
                ->label('First name')
                ->weight(FontWeight::Bold),
            TextEntry::make('api_user_id')
                ->label('Last name')
                ->weight(FontWeight::Bold),
            TextEntry::make('api_user_id')
                ->label("Consumer's phone number")
                ->weight(FontWeight::Bold),
            TextEntry::make('deliveryAddress.address')->label('Address')
                ->weight(FontWeight::Bold),
            TextEntry::make('payment_method')->label('Payment Method')
                ->weight(FontWeight::Bold),
            TextEntry::make('status')->label('Status')
                ->color(fn($record) =>
                match ($record->status->value) {
                    'pending' => 'warning',
                    'processing' => 'info',
                    'completed' => 'success',
                    'cancelled' => 'danger',
                    default => 'gray'}),
        ]);
    }
}
