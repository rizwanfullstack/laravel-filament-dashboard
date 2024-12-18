<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create admin users
        User::create([
            'name' => 'Admin User 1',
            'email' => 'admin1@example.com',
            'password' => Hash::make('password123'), // Always hash passwords
            'role' => 'admin',
        ]);

        User::create([
            'name' => 'Admin User 2',
            'email' => 'admin2@example.com',
            'password' => Hash::make('password123'),
            'role' => 'admin',
        ]);

        // Create regular users
        User::create([
            'name' => 'User 1',
            'email' => 'user1@example.com',
            'password' => Hash::make('password123'),
            'role' => 'user',
        ]);

        User::create([
            'name' => 'User 2',
            'email' => 'user2@example.com',
            'password' => Hash::make('password123'),
            'role' => 'user',
        ]);
    }
}
