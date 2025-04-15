<?php

namespace Database\Seeders;

use App\Models\Cart;
use App\Models\ProductVariant;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class CartProductVariantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Cart::all()->each(function ($cart) {
            try {
                $productVariants = ProductVariant::all()->random(random_int(1, 10))->pluck('id')->toArray();

                foreach ($productVariants as $productVariant) {

                    $cart->productVariants()->attach($productVariant, [
                        'quantity' => random_int(1, 4),
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                }
            } catch (RandomException $e) {
                Log::error($e->getMessage());
            }
        });
    }
}
