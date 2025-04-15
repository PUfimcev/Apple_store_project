<?php

namespace Database\Factories;

use App\Models\ApiUser;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;

class ApiUserFactory extends Factory
{
    protected $model = ApiUser::class;

    public function definition(): array
    {
        return [
            'user_name' => $this->faker->userName(),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => bcrypt($this->faker->password()),
            'first_name' => $this->faker->firstName(),
            'last_name' => $this->faker->lastName(),
            'profile_picture' => $this->faker->imageUrl(300, 300, 'people'),
            'day_of_birth' => $this->faker->dateTimeBetween('-80 years', '-18 years')->format('d-m-Y'),
            'phone_number' => $this->faker->phoneNumber(),
            'address' => $this->faker->address(),
            'city' => $this->faker->city(),
            'is_subscribed' => $this->faker->boolean(),
            'email_verified_at' => $this->faker->optional(0.9)->dateTime(),
            'verification_token' => Str::random(10),
            'password_reset_token' => Str::random(10),
            'password_reset_expiration' => Carbon::now(),
            'last_login_at' => Carbon::now(),
            'deleted_at' => $this->faker->optional(0.2)->dateTime(),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ];
    }

}
