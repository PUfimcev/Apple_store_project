<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Exception;
use Illuminate\Http\JsonResponse;

class CategoryController extends Controller
{
    public function getParentCategories(): JsonResponse
    {
        // This method fetches all parent categories from the database and returns them as a JSON response.
        // If no categories are found, it returns a 404 error.
        // If an exception occurs, it logs the error and returns a 500 error.

        try {
            $categories = Category::parent()->get(['id', 'slug', 'name']);

            if ($categories->isEmpty()) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'No categories found',
                ], 404);
            }
            return $categories->toResourceCollection()->response();

        } catch (Exception $e) {
            logger($e->getMessage());
            return response()->json([
                'status' => 'error',
                'massage' => 'Failed to fetch categories',
            ], 500);
        }
    }
}
