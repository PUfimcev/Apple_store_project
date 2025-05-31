<?php

use App\Http\Controllers\API\{Auth\AuthApiController, CartController, CategoryController, ProductController};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware(['auth:api'])->group(function () {
    Route::controller(AuthApiController::class)->group(function () {
        Route::post('/logout', 'logout');
        Route::get('/user', 'me');
    });

});

Route::controller(AuthApiController::class)->group(function () {
    Route::post('/login', 'login');
    Route::post('/register', 'register');
    Route::post('/refresh', 'refresh');
    Route::post('/check-email', 'checkEmail');
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

Route::controller(CartController::class)->group(function () {
    Route::post('/cart', 'getProductsInCart');
});
