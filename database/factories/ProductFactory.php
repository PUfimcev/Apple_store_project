<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition(): array
    {
        return [
            'category_id' => null,
            'slug' => null,
            'name' => null,
            'description' => $this->faker->text(),
            'price' => null,
            'discount_price' => null,
            'image_url' => null,
        ];
    }
}
