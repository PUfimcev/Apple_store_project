<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\APIController;
use App\Http\Resources\{CategoryInMainPageResource, ParentCategoryResource, SubCategoryResource};
use App\Models\Category;
use Exception;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;

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
     * @param Category $category
     * @return JsonResponse
     */
    public function getCategory(Category $category): JsonResponse
    {
        try {
            $categoryData = $this->getCategoryData($category);

            if ($categoryData->isEmpty()) {
                return $this->responseError('No category found', 404);
            }

            if($category->parent_id !== null) {
                return $this->responseSuccess(SubCategoryResource::collection($categoryData), 200);
            }

            return $this->responseSuccess(ParentCategoryResource::collection($categoryData), 200);

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError('Failed to fetch category', 500);
        }
    }

    public function getCategoryData(Category $category): Collection
    {
        if($category->parent_id !== null) {
            return Category::where('slug', $category->slug)->with(['products'])
                ->get();
        }

        return Category::where('slug', $category->slug)->with(['subcategories', 'allProducts'])
            ->get();
    }

}
