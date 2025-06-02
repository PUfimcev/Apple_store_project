<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\APIController;
use App\Http\Resources\ProductVariantResource;
use App\Models\ProductVariant;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Http\JsonResponse;


class CartController extends APIController
{
    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function getProductsInCart(Request $request): JsonResponse
    {
        $productIds = $request->input('product_ids', []);
        try {
            if (!is_array($productIds)) {
                return $this->responseError('Invalid product IDs format', 400);
            }
            $ProductsInCart = ProductVariant::whereIn('id', $productIds)->get();

            if ($ProductsInCart->isEmpty()) {
                return $this->responseError('No products found', 404);
            }
            return $this->responseSuccess(ProductVariantResource::collection($ProductsInCart), 200);
        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to fetch products', 500);
        }
    }

    public function confirmOrder(Request $request): JsonResponse
    {
        $orderData = $request->all();

        dd($orderData);
        // Here you would typically handle the order confirmation logic, such as saving the order to the database.
        // For now, we will just return a success response with the order data.

        try {
            // Validate and process the order data here
            return $this->responseSuccess(['message' => 'Order confirmed successfully'], 200);
        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to confirm order', 500);
        }
    }
}
