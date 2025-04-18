<?php

namespace Database\Seeders;

use App\Models\ApiUser;
use Illuminate\Database\Seeder;

class ApiUserSeeder extends Seeder
{

    public function run(): void
    {
        ApiUser::factory()->count(20)->create();

    }
}
