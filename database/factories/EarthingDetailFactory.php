<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\EarthingDetail;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\EarthingDetail>
 */
class EarthingDetailFactory extends Factory
{
    
    protected $model = EarthingDetail::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'feeder_id' => $this->faker->numberBetween(1, 10),
            'category_id' => $this->faker->numberBetween(1, 2),
            'tower_structure_id' => $this->faker->numberBetween(1, 2),
            'location' => $this->faker->streetAddress,
            'latitude' => $this->faker->latitude(6, 10),
            'longitude' => $this->faker->longitude(79, 82),
            'tage_no' => 'P' . $this->faker->unique()->numberBetween(100000, 999999),
            'chemical' => $this->faker->numberBetween(1, 10),
            'rod' => $this->faker->numberBetween(1, 3),
            'earth_wire' => $this->faker->randomFloat(2, 1, 10),
            'earthing_before' => $this->faker->randomFloat(2, 0.5, 5),
            'earthing_after' => $this->faker->randomFloat(2, 0.5, 5),
        ];
    }
}
