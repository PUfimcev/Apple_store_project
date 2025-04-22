<?php

namespace Database\Seeders;

use App\Models\Bookmark;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\ProductVariant;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class BookmarkProductVariantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Bookmark::all()->each(function ($bookmark) {
            try {
                $productVariants = ProductVariant::all()->pluck('id')->random(random_int(1, 10))->toArray();

                $bookmark->productVariants()->attach($productVariants, [
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

            } catch (RandomException $e) {
                Log::error($e->getMessage());
            }
        });
    }
}
