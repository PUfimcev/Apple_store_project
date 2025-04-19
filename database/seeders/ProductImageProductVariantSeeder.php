<?php

namespace Database\Seeders;

use App\Models\ProductImage;
use App\Models\ProductVariant;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Services\Photos\PexelsService;
use App\Utils\HandleApiPictures;
use Illuminate\Database\Seeder;


class ProductImageProductVariantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $pexelsService = new PexelsService();
        $handleApiPictures = new HandleApiPictures($pexelsService);

        ProductVariant::withTrashed()->where('id', '>',179)->each(callback: function ($productVariant) use ($handleApiPictures) {

            $imageUrls = $handleApiPictures->savePexelsImage($productVariant->name, 4, 'product_variant_images', 'medium');
            $productImages = [];
            foreach ($imageUrls as $imageUrl) {

                $productImages[] = ProductImage::factory()->create([
                    'url' => $imageUrl,
                    'created_at' => now(),
                    'updated_at' => now(),
                ])->id;
            }

            $productVariant->images()->attach($productImages, [
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        });
    }
}
