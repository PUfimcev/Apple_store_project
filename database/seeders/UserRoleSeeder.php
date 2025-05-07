<?php

namespace Database\Seeders;


use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      $superAdminRole = Role::firstOrCreate(['name' => 'super_admin']);
      $superAdminUser = User::find(1);

        if ($superAdminUser && $superAdminRole) {
            $superAdminUser->assignRole($superAdminRole);
        }

    }
}
