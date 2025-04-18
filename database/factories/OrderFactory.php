<?php

namespace Database\Factories;

use App\Enums\OrderStatus;
use App\Models\Order;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderFactory extends Factory
{
    protected $model = Order::class;

    public function definition(): array
    {
        return [
            'api_user_id' => null,
            'total_amount' => $this->faker->randomFloat(2, 1, 10000),
            'payment_method' => $this->faker->randomElement(['cash', 'card']),
            'delivery_address_id' => null,
            'status' => $this->faker->randomElement(OrderStatus::cases())->value,
        ];
    }
}
