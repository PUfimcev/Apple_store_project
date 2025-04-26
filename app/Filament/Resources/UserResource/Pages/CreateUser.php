<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateUser extends CreateRecord
{
    protected static string $resource = UserResource::class;

    protected function getCreatedNotification(): ?Notification
    {
        $recipient = auth()->user();
        $record = $this->record;
        Notification::make()
            ->title('Created successfully')
            ->body("User $record->user_name has been created.")
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
            ->title('User created')
            ->body("The User $record->user_name has been created successfully.");


    }

    protected function getRedirectUrl(): string
    {
        $record = $this->record;

        return $this->getResource()::getUrl('view', ['record' => $record->id]);
    }
}
