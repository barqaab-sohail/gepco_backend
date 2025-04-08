<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\EarthingDetail;

class EarthingDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        EarthingDetail::factory()
        ->count(50)
        ->hasImages(3) // Each will have 3 images
        ->create();
    }
}
