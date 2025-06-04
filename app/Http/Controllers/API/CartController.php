<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\APIController;
use App\Http\Resources\ProductVariantResource;
use App\Models\ApiUser;
use App\Models\DeliveryAddress;
use App\Models\Order;
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
        try {
            $orderParams = $request->only('api_user_id', 'total_amount', 'payment_method', 'status');
            $addressParams = $request->only('address', 'city');
            $address = DeliveryAddress::firstOrCreate([
                'address' => $addressParams['address'],
                'city' => $addressParams['city'],
                'api_user_id' => $orderParams['api_user_id']
            ]);
            $addressId = $address->id;

            $orderParams['delivery_address_id'] = $addressId;
            $order = Order::create($orderParams);

            foreach ($request->input('products') as $product) {

                $productVariantsData[$product['product_variant_id']] = array_slice($product, 1);
            }
            $order->productVariants()->attach($productVariantsData);

            return $this->responseSuccess(['message' => 'Order confirmed successfully'], 200);
        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to confirm order', 500);
        }
    }
}
