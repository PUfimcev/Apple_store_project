<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class APIController extends Controller
{
    public function responseSuccess($data, $code = 200): JsonResponse
    {
        // This method returns a JSON response with a success status and the provided data.
        // It is used to standardize the response format across the API.
        return response()->json([
            'status' => 'success',
            'data' => $data,
        ], $code);
    }

    public function responseError($message, $code = 500): JsonResponse
    {
        // This method returns a JSON response with an error status and the provided message.
        // It is used to standardize the error response format across the API.
        return response()->json([
            'status' => 'error',
            'message' => $message,
        ], $code);
    }
}
