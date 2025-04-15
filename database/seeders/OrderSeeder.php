<?php

namespace Database\Seeders;

use App\Models\ApiUser;
use App\Models\Order;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ApiUser::all()->each(function ($user) {

            try {
                if (random_int(0, 9) < 7) {
                    $deliveryAddress = $user->deliveryAddresses()->get()->random();
                    Order::factory()->count(random_int(1, 5))->create([
                        'api_user_id' => $user->id,
                        'delivery_address_id' => $deliveryAddress->id,
                    ]);
                }
            } catch (RandomException $e) {
                Log::error($e->getMessage());
            }
        });
    }
}
