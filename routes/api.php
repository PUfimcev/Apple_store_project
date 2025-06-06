<?php

use App\Http\Controllers\API\{Auth\AuthApiController, CartController, CategoryController, ProductController};
use Illuminate\Support\Facades\Route;


Route::middleware(['auth:api'])->group(function () {
    Route::controller(AuthApiController::class)->group(function () {
        Route::get('/user', 'me');
        Route::post('/logout', 'logout');
    });

});

Route::controller(AuthApiController::class)->group(function () {
    Route::post('/refresh', 'refresh');
    Route::post('/login', 'login');
    Route::post('/register', 'register');
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
    Route::post('/order/confirmed', 'confirmOrder');
});
