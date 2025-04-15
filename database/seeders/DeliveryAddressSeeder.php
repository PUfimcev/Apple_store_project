<?php

namespace Database\Seeders;

use App\Models\ApiUser;
use App\Models\DeliveryAddress;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class DeliveryAddressSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ApiUser::all()->each(function ($user) {
            try {
                DeliveryAddress::factory()->count(random_int(1, 2))->create([
                    'api_user_id' => $user->id,
                ]);
            } catch (RandomException $e) {
                Log::error($e->getMessage());
            }
        });
    }
}
