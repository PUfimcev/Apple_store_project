<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\APIController;
use App\Http\Resources\UserApiFullResource;
use App\Http\Resources\UserApiShortResource;
use App\Models\ApiUser;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthApiController extends APIController
{
    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function register(Request $request): JsonResponse
    {
        try {
            $validated = $request->validate([
                'name' => 'string|max:255',
                'email' => 'required|string|email|unique:api_users,email',
                'password' => 'required|string|min:8|confirmed',
                'password_confirmation' => 'required|string|min:8',
            ]);
        } catch (ValidationException $e) {
            return $this->responseError(['errors' => $e->errors()], 422);
        }

        ApiUser::create([
            'user_name' => $validated['name'] ?? $this->getUsername($validated['email']),
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
        ]);

        $message = ['message' => 'Registered successfully'];
        return $this->responseSuccess([
            $message,
        ], 200);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function login(Request $request): JsonResponse
    {
//        auth()->shouldUse('api');

        $credentials = $request->validate([
            'email' => 'required|string|email',
            'password' => 'required',
        ]);

        try {
            if (!$accessToken = JWTAuth::attempt($credentials)) {
                return $this->responseError(['error' => 'Invalid credentials'], 401);
            }
            if (!$user = JWTAuth::user()) {
                return $this->responseError(['error' => 'User not found'], 404);
            }
            $refreshToken = JWTAuth::fromUser(auth()->user());
            $cookie = cookie('refresh_token', $refreshToken, 60 * 24 * 14, '/', null, false, true, false, 'lax');

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError(['error' => 'Could not create token'], 500);
        }

        return $this->responseSuccess([
            'access_token' => $accessToken,
//            'refresh_token' => $refreshToken,
            'user' => new UserApiShortResource($user),
            'message' => 'Logged in successfully'
        ], 200)->cookie($cookie);
    }

    /**
     * @return JsonResponse
     */
    public function logout(): JsonResponse
    {
        if (!JWTAuth::getToken()) {
            return response()->json(['error' => 'Token not provided'], 401);
        }

        JWTAuth::invalidate(JWTAuth::getToken());
        $message = ['message' => 'Logged out successfully'];
        return $this->responseSuccess($message, 200)->cookie('refresh_token', '', -1, '/', null, false, true, false, 'lax');
    }

//    public function refresh(): JsonResponse
//    {
//        $oldRefreshToken = $request->cookie('refresh_token'); // Получаем старый refresh-токен
//
//        if (!$oldRefreshToken) {
//            return response()->json(['error' => 'No refresh token'], 401);
//        }
//
//        try {
//            $newAccessToken = JWTAuth::refresh($oldRefreshToken); // Обновляем access-токен
//            $newRefreshToken = JWTAuth::fromUser(auth()->user()); // Создаем новый refresh-токен
//
//            return response()->json(['access_token' => $newAccessToken])
//                ->cookie('refresh_token', $newRefreshToken, 60 * 24 * 14, '/', null, false, true, false, 'lax');
//        } catch (Exception $e) {
//            return response()->json(['error' => 'Invalid refresh token'], 401);
//        }
//    }


    public function me(): JsonResponse
    {
        try {

            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return $this->responseError(['error' => 'User not found'], 404);
            }

        } catch (JWTException $e) {
            logger($e->getMessage());
            return $this->responseError(['error' => 'Unauthorized'], 401);
        }

        return $this->responseSuccess(new UserApiFullResource($user), 200);
    }

    public function checkEmail(): JsonResponse
    {
        $email = request()->input('email');
        if (!$email) {
            return $this->responseError(['error' => 'Email is required'], 400);
        }

        $user = ApiUser::where('email', $email)->first();

        if ($user) {
            return $this->responseSuccess(['exists' => true], 200);
        }

        return $this->responseSuccess(['exists' => false], 200);
    }

    public function getUsername($email): string
    {
        return strstr($email, '@', true);
    }

}
