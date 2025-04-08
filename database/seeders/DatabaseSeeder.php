<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        // \App\Models\Image::factory(10)->create();
        // \App\Models\EarthingDetail::factory(10)->create();

        $this->call([
            EarthingDetailSeeder::class,
            ImageSeeder::class,
        ]);

        // \App\Models\User::factory(10)->create();

        // $this->call([
        //     UserSeeder::class,
        // ]);
    
        // EarthingDetailSeeder::class;
        // ImageSeeder::class;
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
