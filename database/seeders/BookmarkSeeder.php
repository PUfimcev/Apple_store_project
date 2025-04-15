<?php

namespace Database\Seeders;

use App\Models\ApiUser;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Random\RandomException;

class BookmarkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ApiUser::all()->each(function ($user) {
            try {
                if (random_int(0, 9) < 7) {
                    $user->bookmark()->create([
                        'api_user_id' => $user->id,
                    ]);
                }
            } catch (RandomException $e) {
                Log::error($e->getMessage());
            }
        });
    }
}
