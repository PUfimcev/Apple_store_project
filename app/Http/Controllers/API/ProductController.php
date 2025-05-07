<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\ProductVariant;
use Exception;
use Illuminate\Http\JsonResponse;


class ProductController extends Controller
{
    public function getBestSellers(): JsonResponse
    {
        // This method fetches all parent categories from the database and returns them as a JSON response.
        // If no categories are found, it returns a 404 error.
        // If an exception occurs, it logs the error and returns a 500 error.

        try {

        $bestSellerProductVariantIds = Order::where('status', 'completed')->get()
            ->flatMap->ProductVariants
            ->mapToGroups(fn($item) => [$item->id => $item->pivot->quantity])
            ->map->sum()
            ->sortDesc()
            ->take(5)
            ->keys()
            ->toArray();

        $bestSellerProducts = ProductVariant::whereIn('id', $bestSellerProductVariantIds)
            ->with(['product' => function ($query) {
                $query->select('id','slug','name', 'description', 'price', 'discount_price', 'image_url');
            }])
            ->get()
            ->map
            ->product;

            if ($bestSellerProducts->isEmpty()) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'No categories found',
                ], 404);
            }
            return $bestSellerProducts->toResourceCollection()->response();

        } catch (Exception $e) {
            logger($e->getMessage());
            return response()->json([
                'status' => 'error',
                'massage' => 'Failed to fetch best-sellers',
            ], 500);
        }
    }
}
