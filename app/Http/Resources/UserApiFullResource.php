<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property mixed $user_name
 * @property mixed $city
 * @property mixed $phone_number
 * @property mixed $address
 * @property mixed $day_of_birth
 * @property mixed $profile_picture
 * @property mixed $last_name
 * @property mixed $first_name
 * @property mixed $email
 */
class UserApiFullResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'user_name' => $this->user_name,
            'email' => $this->email,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'profile_picture' => $this->profile_picture,
            'day_of_birth' => $this->day_of_birth,
            'phone_number' => $this->phone_number,
            'address' => $this->address,
            'city' => $this->city,
        ];
    }
}
