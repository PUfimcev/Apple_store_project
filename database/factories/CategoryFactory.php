<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{
    protected $model = Category::class;

    public function definition(): array
    {
        return [
            'parent_id' => null,
            'slug'  => null,
            'name'  => null,
            'description'  => $this->faker->text(),
            'image_url' => null,
            'deleted_at' => null,
        ];
    }


}
