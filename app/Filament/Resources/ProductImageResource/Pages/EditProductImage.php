<?php

namespace App\Filament\Resources\ProductImageResource\Pages;

use App\Filament\Resources\ProductImageResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Filament\Support\Enums\FontWeight;

class EditProductImage extends EditRecord
{
    protected static string $resource = ProductImageResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.product-images.index')),
            Actions\ViewAction::make(),
            Actions\DeleteAction::make()
                ->action(function ($record) {
                    Notification::make()
                        ->title('Deleted successfully')
                        ->body("Image has been deleted.")
                        ->success()
                        ->actions([
                            \Filament\Notifications\Actions\Action::make('Read')
                                ->button()
                                ->markAsRead(),
                            \Filament\Notifications\Actions\Action::make('Unread')
                                ->button()
                                ->markAsUnread(),
                        ])
                        ->sendToDatabase(auth()->user());
                    $record->delete();
                    redirect()->route('filament.admin.resources.product-images.index');
                    Notification::make()
                        ->success()
                        ->title('Image deleted')
                        ->body('The Image has been deleted successfully.')
                        ->send();
                })
                ->requiresConfirmation()
                ->modalHeading('Delete Image')
                ->modalDescription('Are you sure you want to delete this image?')
                ->modalSubmitActionLabel('Delete'),
        ];
    }

    protected function getSavedNotification(): ?Notification
    {
        Notification::make()
            ->title('Image updated successfully')
            ->body('Image has been updated.')
            ->success()
            ->actions([
                \Filament\Notifications\Actions\Action::make('Read')
                    ->button()
                    ->markAsRead(),
                \Filament\Notifications\Actions\Action::make('Unread')
                    ->button()
                    ->markAsUnread(),
            ])
            ->sendToDatabase(auth()->user());

        return Notification::make()
            ->success()
            ->title('Image updated')
            ->body('The image has been saved successfully.');
    }
}
