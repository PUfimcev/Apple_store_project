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
            ]);
        } catch (ValidationException $e) {
            return $this->responseError(['errors' => $e->errors()], 422);
        }

        ApiUser::create([
            'user_name' => $validated['name'] ?? $this->getUsername($validated['email']),
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
        ]);

//        $accessToken = JWTAuth::fromUser($user);
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
        try {
            $validated = $request->validate([
                'email' => 'required|string|email',
                'password' => 'required',
            ]);
        } catch (ValidationException $e) {
            return $this->responseError(['errors' => $e->errors()], 422);
        }

        $credentials = ['email' => $validated['email'], 'password' => $validated['password']];

        try{
            if (!$accessToken = JWTAuth::attempt($credentials)) {
                return $this->responseError(['error' => 'Invalid credentials'], 401);
            }

            $user = auth()->user();
            $refreshToken = JWTAuth::fromUser($user);

        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError(['error' => 'Could not create token'], 500);
        }

        return $this->responseSuccess([
            'access_token' => $accessToken,
            'refresh_token' => $refreshToken,
            'user' => new UserApiShortResource($user)
        ], 200);
    }

    /**
     * @return JsonResponse
     */
    public function logout(): JsonResponse
    {
        JWTAuth::invalidate(JWTAuth::getToken());
        $message = ['message' => 'Logged out successfully'];
        return $this->responseSuccess($message, 200);
    }

    public function refresh(): JsonResponse
    {

        $token = JWTAuth::getToken();
        if (!$token) {
            return $this->responseError(['error' => 'Token not provided'], 400);
        }

        try {
            $newToken = JWTAuth::refresh($token);
        } catch (Exception $e) {
            logger($e->getMessage());
            return $this->responseError(['error' => 'Could not refresh token'], 500);
        }

        return $this->responseSuccess(['access_token' => $newToken], 200);
    }

    public function me(): JsonResponse
    {
        try {

            if(!$user = JWTAuth::parseToken()->authenticate()){
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
            return $this->responseError(['error' => 'Email is exist'], 200);
        }

        return $this->responseSuccess(['exists' => false], 200);
    }

    public function getUsername($email): String
    {
       return strstr($email, '@', true);
    }

}
