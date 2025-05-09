<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\APIController;
use App\Http\Resources\{CategoryInMainPageResource, NewProductResource};
use App\Models\Category;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class CategoryController extends APIController
{
    /**
     * @return JsonResponse
     */
    public function getParentCategories(): JsonResponse
    {
        // This method fetches all parent categories from the database and returns them as a JSON response.
        // If no categories are found, it returns a 404 error.
        // If an exception occurs, it logs the error and returns a 500 error.

        try {

            $categories = Category::parentCategories()->get();
            if ($categories->isEmpty()) {
                return $this->responseError('No categories found', 404);
            }
            return $this->responseSuccess(CategoryInMainPageResource::collection($categories), 200);

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to fetch categories', 500);
        }
    }

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


}
