<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\APIController;
use App\Http\Resources\ProductCardResource;
use App\Http\Resources\ProductResource;
use App\Http\Resources\NewProductResource;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductVariant;
use Exception;
use Illuminate\Http\JsonResponse;


class ProductController extends APIController
{

    /**
     * @return JsonResponse
     */
    public function getNewProducts(): JsonResponse
    {
        // This method fetches all parent categories from the database and returns them as a JSON response.
        // If no categories are found, it returns a 404 error.
        // If an exception occurs, it logs the error and returns a 500 error.

        try {
            $newProducts = Category::newProducts()->get(['id','parent_id', 'slug', 'name', 'description', 'image_url', 'is_new',]);


            if ($newProducts->isEmpty()) {
                return $this->responseError('No new products found', 404);
            }
            return $this->responseSuccess(NewProductResource::collection($newProducts), 200);

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to fetch new products', 500);
        }
    }
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
                ->take(4)
                ->keys()
                ->toArray();

            $bestSellerProducts = ProductVariant::whereIn('id', $bestSellerProductVariantIds)
                ->with(['product' => function ($query) {
                    $query->select('id', 'slug', 'name', 'description', 'price', 'discount_price', 'image_url');
                }])
                ->get()
                ->map
                ->product;

            if ($bestSellerProducts->isEmpty()) {
                return $this->responseError('No products found', 404);
            }
            return $this->responseSuccess(ProductResource::collection($bestSellerProducts), 200);

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to fetch best-sellers', 500);
        }
    }

    public function getProduct(Category $category,Product $product): JsonResponse
    {
        try {

            $productData = Product::where('slug', $product->slug)->with(['productVariants.images'])
                ->get();

            if($productData->isEmpty()) {
                return $this->responseError('No product found', 404);
            }

            return $this->responseSuccess(ProductCardResource::collection($productData), 200);

        } catch (Exception $e){
            logger($e->getMessage());
            return $this->responseError('Failed to fetch product', 500);
        }
    }
}
