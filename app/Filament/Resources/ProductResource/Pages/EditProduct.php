<?php

namespace App\Filament\Resources\ProductResource\Pages;

use App\Filament\Resources\ProductResource;
use Filament\Actions;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;

class EditProduct extends EditRecord
{
    protected static string $resource = ProductResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.products.index')),
            Actions\ViewAction::make(),
            Actions\DeleteAction::make()
                ->action(function ($record) {
                    Notification::make()
                        ->title('Deleted successfully')
                        ->body("Product has been deleted.")
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
                    redirect()->route('filament.admin.resources.products.index');
                    Notification::make()
                        ->success()
                        ->title('Product deleted')
                        ->body('The Product has been deleted successfully.')
                        ->send();
                })
                ->requiresConfirmation()
                ->modalHeading('Delete Product')
                ->modalDescription('Are you sure you want to delete this product?')
                ->modalSubmitActionLabel('Delete'),
            Actions\ForceDeleteAction::make()
                ->action(function ($record) {
                    Notification::make()
                        ->title('Force deleted successfully')
                        ->body('Product has been deleted from DB.')
                        ->success()
                        ->sendToDatabase(auth()->user());
                    $record->forceDelete();
                    redirect()->route('filament.admin.resources.orders.index');
                    Notification::make()
                        ->success()
                        ->title('Product deleted')
                        ->body('The Product has been deleted successfully.')
                        ->send();
                })
                ->requiresConfirmation()
                ->modalHeading('Force Delete Product')
                ->modalDescription('Are you sure you want to force delete this product?')
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
            ->body("The Product has changed.")
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
            ->title('Product updated')
            ->body("The Product has been saved successfully.");
    }

    protected function getRedirectUrl(): string
    {
        $record = $this->record;

        return $this->getResource()::getUrl('view', ['record' => $record->id]);
    }
}
