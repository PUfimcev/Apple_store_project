<?php

use Illuminate\Support\Facades\Route;

Auth::routes();

Route::middleware(['auth:admin'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
});

Route::get('/', function () {
    return view('root');
});


