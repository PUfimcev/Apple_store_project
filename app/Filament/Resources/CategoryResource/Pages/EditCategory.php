<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use App\Filament\Resources\CategoryResource;
use Filament\Actions;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;


class EditCategory extends EditRecord
{
    protected static string $resource = CategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
            Actions\ForceDeleteAction::make(),
            Actions\RestoreAction::make(),
        ];
    }

    protected function getSavedNotification(): ?Notification
    {
        $recipient = auth()->user();
        $record = $this->record;
        Notification::make()
            ->title('Updated successfully')
            ->body("The Category $record->name has been updated.")
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
            ->title('Category updated')
            ->body('The Category has been saved successfully.');
    }

    protected function getRedirectUrl(): string
    {
        $record = $this->record;

        return $this->getResource()::getUrl('view', ['record' => $record->id]);
    }

}
