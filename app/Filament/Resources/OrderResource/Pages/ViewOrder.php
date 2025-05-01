<?php

namespace App\Filament\Resources\OrderResource\Pages;

use App\Filament\Resources\OrderResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;

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
                ->formatStateUsing(fn($record) => "<strong>{$record->id}</strong>")
                ->html(),
            TextEntry::make('total_amount')->label('Total Amount')
                ->formatStateUsing(fn($record) => "<strong>$record->total_amount</strong>")
                ->html(),
            TextEntry::make('api_user_id')
                ->label('First name')
                ->formatStateUsing(fn($record) => "<strong>{$record->apiUser->first_name}</strong>")
                ->html(),
            TextEntry::make('api_user_id')
                ->label('Last name')
                ->formatStateUsing(fn($record) => "<strong>{$record->apiUser->last_name}</strong>")
                ->html(),
            TextEntry::make('api_user_id')
                ->label("Consumer's phone number")
                ->formatStateUsing(fn($record) => "<strong>{$record->apiUser->phone_number}</strong>")
                ->html(),
            TextEntry::make('deliveryAddress.address')->label('Address')
                ->formatStateUsing(fn($record) => "<strong>{$record->deliveryAddress->address}</strong>, <strong>{$record->deliveryAddress->city}</strong>")
                ->html(),
            TextEntry::make('payment_method')->label('Payment Method')
                ->formatStateUsing(fn($record) => "<strong>$record->payment_method</strong>")
                ->html(),
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
