<?php

namespace App\Filament\Resources\ApiUserResource\Pages;

use App\Filament\Resources\ApiUserResource;
use Filament\Actions;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;

class EditApiUser extends EditRecord
{
    protected static string $resource = ApiUserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('Main page')
                ->label('Main page')
                ->url(route('filament.admin.resources.api-users.index')),
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
            ->body("The User $record->user_name has been updated.")
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
            ->title('User updated')
            ->body("The User $record->user_name has been saved successfully.");
    }

    protected function getRedirectUrl(): string
    {
        $record = $this->record;

        return $this->getResource()::getUrl('view', ['record' => $record->id]);
    }


}
