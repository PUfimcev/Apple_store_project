<?php

namespace App\Filament\Resources\OrderResource\Pages;

use App\Filament\Resources\OrderResource;
use Filament\Actions;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;

class EditOrder extends EditRecord
{
    protected static string $resource = OrderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.orders.index')),
            Actions\ViewAction::make(),
            Actions\DeleteAction::make()
                ->action(function ($record) {
                    Notification::make()
                        ->title('Deleted successfully')
                        ->body("Order has been deleted.")
                        ->success()
                        ->actions([
                            Action::make('Read')
                                ->button()
                                ->markAsRead(),
                            Action::make('Unread')
                                ->button()
                                ->markAsUnread(),
                        ])
                        ->sendToDatabase(auth()->user());
                    $record->delete();
                    redirect()->route('filament.admin.resources.orders.index');
                    Notification::make()
                        ->success()
                        ->title('Order deleted')
                        ->body('The Order has been deleted successfully.')
                        ->send();
                })
                ->requiresConfirmation()
                ->modalHeading('Delete Order')
                ->modalDescription('Are you sure you want to delete this category?')
                ->modalSubmitActionLabel('Delete'),
            Actions\ForceDeleteAction::make()
                ->action(function ($record) {
                    Notification::make()
                        ->title('Force deleted successfully')
                        ->body('Order has been deleted from DB.')
                        ->success()
                        ->sendToDatabase(auth()->user());
                    $record->forceDelete();
                    redirect()->route('filament.admin.resources.orders.index');
                    Notification::make()
                        ->success()
                        ->title('Order deleted')
                        ->body('The Order has been deleted successfully.')
                        ->send();
                })
                ->requiresConfirmation()
                ->modalHeading('Force Delete Order')
                ->modalDescription('Are you sure you want to force delete this category?')
                ->modalSubmitActionLabel('Force Delete'),
            Actions\RestoreAction::make(),
        ];
    }

    protected function getSavedNotification(): ?Notification
    {
        $recipient = auth()->user();
        $record = $this->record;

        Notification::make()
            ->title('Updated successfully')
            ->body("The Order has changed.")
            ->success()
            ->actions([
                Action::make('Read')
                    ->button()
                    ->markAsRead(),
                Action::make('Unread')
                    ->button()
                    ->markAsUnread(),
            ])
            ->sendToDatabase($recipient);

        return Notification::make()
            ->success()
            ->title('Order updated')
            ->body("The Order has been saved successfully.");
    }

    protected function getRedirectUrl(): string
    {
        $record = $this->record;

        return $this->getResource()::getUrl('view', ['record' => $record->id]);
    }
}
