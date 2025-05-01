<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Resources\Pages\ViewRecord;
use Filament\Support\Enums\FontWeight;

class ViewUser extends ViewRecord
{
    protected static string $resource = UserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.users.index')),
            Actions\EditAction::make(),
        ];
    }

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist->schema([
            TextEntry::make('id')->label('ID')->weight(FontWeight::Bold),
            TextEntry::make('name')->label('User name')->weight(FontWeight::Bold),
            TextEntry::make('email')->label('Email')->weight(FontWeight::Bold),
            TextEntry::make('email_verified_at')->label('Email verified at')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('roles.name')->label('Role')->weight(FontWeight::Bold),
            TextEntry::make('deleted_at')
                ->label('Deleting date')
                ->dateTime('d.m.Y H:i')
            ->visible(fn($record) => $record->deleted_at !== null)->weight(FontWeight::Bold),
            TextEntry::make('updated_at')->label('Updating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('created_at')->label('Creating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
        ]);
    }
}
