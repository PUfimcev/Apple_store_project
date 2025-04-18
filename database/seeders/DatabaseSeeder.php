<?php

namespace Database\Seeders;

//use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        $this->call([
//            ApiUserSeeder::class,
//            DeliveryAddressSeeder::class,
//            BookmarkSeeder::class,
//            CategorySeeder::class,
//            ProductSeeder::class,
//            ProductVariantSeeder::class,
//            OrderSeeder::class,
//            CartSeeder::class,
//            BookmarkProductVariantSeeder::class,
//            CartProductVariantSeeder::class,
//            OrderProductVariantSeeder::class,
            ProductImageProductVariantSeeder::class,
        ]);
        // User::factory(10)->create();

//        User::factory()->create([
//            'name' => 'Test User',
//            'email' => 'test@example.com',
//        ]);
    }
}
