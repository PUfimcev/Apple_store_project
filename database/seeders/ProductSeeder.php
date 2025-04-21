<?php

namespace Database\Seeders;

use App\Models\Category;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Product;
use App\Services\Photos\PexelsService;
use App\Utils\HandleApiPictures;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Random\RandomException;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $products = [
            'Macbook Pro' => ['Macbook Pro M4 14-inch', 'Macbook Pro M4Pro 14-inch', 'Macbook Pro M4Pro 16-inch', 'Macbook Pro M4Max 16-inch'],
            'Macbook Air' => ['Macbook Air M4 13-inch', 'Macbook Air M4 15-inch'],
            'iMac' => ['iMac 24-inch'],
            'Mac mini' => ['Mac mini M4', 'Mac mini M4Pro'],
            'Mac Studio' => ['Mac Studio M3Ultra', 'Mac Studio M4Max'],
            'iPhone 16' => ['iPhone 16 128GB', 'iPhone 16 256GB', 'iPhone 16 512GB'],
            'iPhone 16 Plus' => ['iPhone 16 Plus 128GB', 'iPhone 16 Plus 256GB', 'iPhone 16 Plus 512GB'],
            'iPhone 16 Pro' => ['iPhone 16 Pro 256GB', 'iPhone 16 Pro 512GB', 'iPhone 16 Pro 1TB'],
            'iPhone 16 Pro Max' => ['iPhone 16 Pro Max 256GB', 'iPhone 16 Pro Max 512GB', 'iPhone 16 Pro Max 1TB'],
            'iPad Pro' => ['iPad Pro 11-inch', 'iPad Pro 13-inch'],
            'iPad Air' => ['iPad Air 11-inch', 'iPad Air 13-inch'],
            'iPad Mini' => ['iPad Mini 8.3-inch'],
            'Apple Watch Series 10' => ['Apple Watch Series 10 42mm', 'Apple Watch Series 10 46mm'],
            'Apple Watch Ultra 2' => ['Apple Watch Series Ultra 2 49mm'],
            'AirPods Pro' => ['AirPods Pro'],
            'AirPods Max' => ['AirPods Max'],
            'AirPods 4' => ['AirPods 4'],
            'HomePod mini' => ['HomePod mini'],
            'HomePod' => ['HomePod'],
            'Apple TV 4K' => ['Apple TV 4K'],
        ];

        $directoryName = 'products_images';
        $pexelsService = new PexelsService();
        $handleApiPictures = new HandleApiPictures($pexelsService);

        if (Storage::exists($directoryName)) {
            Storage::deleteDirectory($directoryName);
        }

        Category::withTrashed()->whereNotNull('parent_id')->each(function ($category) use ($products, $directoryName, $handleApiPictures) {

            foreach ($products[$category->name] as $product) {
                try {
                    $imageUrl = $handleApiPictures->savePexelsImage($product, 1, $directoryName, 'medium');
                    $price = random_int(0, 10000) / 100;
                    $discount_price = (random_int(0, 9) < 3) ? ($price * (1 - (random_int(1, 4) / 10))) : null;

                    Product::factory()->create([
                        'category_id' => $category->id,
                        'slug' => str($product)->slug(),
                        'name' => trim($product),
                        'price' => $price,
                        'discount_price' => $discount_price,
                        'image_url' => $imageUrl,
                    ]);

                } catch (RandomException $e) {
                    Log::error($e->getMessage());
                }
            }
        });
    }
}


