<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Image;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Image>
 */
class ImageFactory extends Factory
{
   
    protected $model = Image::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        
        $imageDirectory = storage_path('app/public/images');
    if (!file_exists($imageDirectory)) {
        mkdir($imageDirectory, 0755, true);
    }

    $fileName = time() . '_' . $this->faker->word . '.jpg';
    $sourcePath = public_path('dummy.jpg'); // Make sure a dummy.jpg file exists
    $destinationPath = $imageDirectory . '/' . $fileName;

    // Copy a dummy image instead of generating one
    copy($sourcePath, $destinationPath);

    return [
        'path' => 'images/' . $fileName,
        'earthing_detail_id' => $this->faker->numberBetween(1, 50),
    ];
    }
}
