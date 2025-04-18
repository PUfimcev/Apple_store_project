<?php

namespace Database\Factories;

use App\Models\ProductVariant;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductVariantFactory extends Factory
{
    protected $model = ProductVariant::class;

    public function definition(): array
    {
        return [
            'product_id' => null,
            'sku' => null,
            'slug' => null,
            'name' => null,
            'properties' => null,
            'price' => null,
            'discount_price' => null,
            'stock' => $this->faker->numberBetween(0, 100),
        ];
    }
}
