<?php

use App\Http\Controllers\API\{ CategoryController, ProductController};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware(['auth:api'])->group(function () {

    Route::get('/user', function (Request $request) {
        return $request->user();
    });
});

Route::controller(CategoryController::class)->group(function () {
    Route::get('/categories', 'getParentCategories');
    Route::get('/{category:slug}', 'getCategory');
});

Route::controller(ProductController::class)->group(function () {
    Route::get('/products/best-sellers', 'getBestSellers');
    Route::get('/products/new-arrivals', 'getNewProducts');
    Route::get('/products/{product:slug}', 'getProduct');
});


