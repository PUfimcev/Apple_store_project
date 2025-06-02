<?php

namespace App\Filament\Resources\ApiUserResource\Pages;

use App\Filament\Resources\ApiUserResource;
use App\Models\ApiUser;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\ImageEntry;
use Filament\Support\Enums\FontWeight;

class ViewApiUser extends ViewRecord
{
    protected static string $resource = ApiUserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('Main page')
                ->button()
                ->url(route('filament.admin.resources.api-users.index')),
            Actions\EditAction::make(),
        ];
    }

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist->schema([
            TextEntry::make('id')->label('ID')->weight(FontWeight::Bold),
            TextEntry::make('name')->label('User name')->weight(FontWeight::Bold),
            TextEntry::make('email')->label('Email')->weight(FontWeight::Bold),
            TextEntry::make('first_name')->label('First name')->weight(FontWeight::Bold),
            TextEntry::make('last_name')->label('Last name')->weight(FontWeight::Bold),
            TextEntry::make('day_of_birth')->label('Date of birth')->dateTime('d.m.Y')->weight(FontWeight::Bold),
            TextEntry::make('phone_number')->label('Phone number')->weight(FontWeight::Bold),
            TextEntry::make('address')->label('Address')->weight(FontWeight::Bold),
            TextEntry::make('city')->label('City')->weight(FontWeight::Bold),
            TextEntry::make('is_subscribed')->label('Is subscribed')->formatStateUsing(fn($state) => $state ? 'Yes' : 'No'),
            TextEntry::make('email_verified_at')->label('Email verified at')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('last_login_at')->label('Last login at')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('deleted_at')->label('Deleting date')->dateTime('d.m.Y H:i')->visible(fn($record) => $record->deleted_at !== null),
            TextEntry::make('updated_at')->label('Updating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            TextEntry::make('created_at')->label('Creating date')->dateTime('d.m.Y H:i')->weight(FontWeight::Bold),
            ImageEntry::make('profile_picture')
                ->width(200)
                ->height(300)
                ->columnSpanFull(),
        ]);
    }

//    public function getRecord()
//    {
//        dd(request()->route('record'));
//        return ApiUser::findOrFail(request()->route('record'));
//    }
}
