<?php

namespace Database\Seeders;

use App\Models\ProductImage;
use App\Models\ProductVariant;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductImageProductVariantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ProductVariant::withTrashed()->each(function ($productVariant) {
            $productImages = ProductImage::factory()->count(random_int(1, 6))->create()->pluck('id')->toArray();

            $productVariant->images()->attach($productImages, [
                'created_at' => now(),
                'updated_at' => now()
            ]);
        });
    }
}
