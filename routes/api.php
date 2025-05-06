<?php

use App\Http\Controllers\API\{ CategoryController, ProductController};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware(['auth:api'])->group(function () {

    Route::get('/user', function (Request $request) {
        return $request->user();
    });
});

Route::get('/categories', [CategoryController::class, 'getParentCategories']);
Route::get('/products/best-sellers', [ProductController::class, 'getBestSellers']);

