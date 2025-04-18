<?php

namespace Database\Seeders;

use App\Models\Category;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Services\Photos\PexelsService;
use App\Utils\HandleApiPictures;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use JsonException;
use Random\RandomException;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $subcategories = [
            'Mac' => ['Macbook Air', 'Macbook Pro', 'iMac', 'Mac mini', 'Mac Studio'],
            'iPhone' => ['iPhone 16', 'iPhone 16 Plus', 'iPhone 16 Pro', 'iPhone 16 Pro Max'],
            'iPad' => ['iPad Pro', 'iPad Air', 'iPad Mini'],
            'Apple Watch' => ['Apple Watch Series 10', 'Apple Watch Ultra 2'],
            'AirPods' => ['AirPods Pro', 'AirPods Max', 'AirPods 4'],
            'TV & Home' => ['Apple TV 4K', 'HomePod', 'HomePod mini'],
        ];

        $directoryName = 'categories_images';
        $pexelsService = new PexelsService();
        $handleApiPictures = new HandleApiPictures($pexelsService);

        if (Storage::exists($directoryName)) {
            Storage::deleteDirectory($directoryName);
        }

        Category::factory()->count(6)->sequence(
            ['slug' =>  Str::slug('Mac'), 'name' => 'Mac'],
            ['slug' => Str::slug('iPhone'), 'name' => 'iPhone'],
            ['slug' => Str::slug('iPad'), 'name' => 'iPad'],
            ['slug' => Str::slug('Watch'), 'name' => 'Apple Watch'],
            ['slug' => Str::slug('AirPods'), 'name' => 'AirPods'],
            ['slug' => Str::slug('TV & Home'), 'name' => 'TV & Home'],
        )->create([
            'parent_id' => null,
        ])->each(function ($category) use ($subcategories, $directoryName, $handleApiPictures) {


            foreach ($subcategories[$category->name] as $subcategory) {

                try {
                    $imageUrl = $handleApiPictures->savePexelsImage($subcategory, 1, $directoryName, 'medium');
                } catch (JsonException $e) {
                    Log::error("Problem with getting path:".$e->getMessage());
                }
                try {

                    Category::factory()->create([
                        'parent_id' => $category->id,
                        'slug' => Str::slug($subcategory),
                        'name' => $subcategory,
                        'image_url' => $imageUrl,
                    ]);

                } catch (RandomException $e) {
                    Log::error($e->getMessage());
                }
            }

        });
    }
}
