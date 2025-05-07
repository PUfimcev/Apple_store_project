<?php

use Filament\Facades\Filament;
use Illuminate\Support\Facades\Route;

Auth::routes();

Route::middleware(['auth:admin'])->group(function () {

});




