<?php

namespace Database\Seeders;

use App\Models\Order;
use App\Models\ProductVariant;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class OrderProductVariantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Order::withTrashed()->each(function ($order) {
            try {
                $productVariants = ProductVariant::all()->random(random_int(1, 10))->pluck('id')->toArray();

                foreach ($productVariants as $productVariant) {
                    $price = random_int(0, 10000) / 100;
                    $discount_price = (random_int(0, 9) < 4) ? ($price * (1 - (random_int(1, 4) / 10))) : null;
                    $order->productVariants()->attach($productVariant, [
                        'quantity' => random_int(1, 4),
                        'price' => $price,
                        'discount_price' => $discount_price,
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
