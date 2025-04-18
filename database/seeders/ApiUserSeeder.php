<?php

namespace Database\Seeders;

use App\Models\ApiUser;
use App\Services\Photos\PexelsService;
use App\Utils\HandleApiPictures;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use JsonException;

class ApiUserSeeder extends Seeder
{

    public function run(): void
    {
        $directoryName = 'profile_images';
        $pexelsService = new PexelsService();
        $handleApiPictures = new HandleApiPictures($pexelsService);

        if (Storage::exists($directoryName)) {
            Storage::deleteDirectory($directoryName);
        }
        ApiUser::factory()->count(10)->create()->each(function ($user) use ($directoryName, $handleApiPictures) {

            $variantsImages= ['profile picture', 'headshot', 'avatar', 'portrait', 'selfie', 'face', 'bust', 'upper body', 'head and shoulders', 'close-up', 'smile', 'happy', 'friendly', 'professional', 'business casual'];

            $randomVariant = $variantsImages[array_rand($variantsImages)];

            try {
                $imageUrl = $handleApiPictures->savePexelsImage($randomVariant, 1, $directoryName, 'small');
            } catch (JsonException $e) {
                Log::error("Problem with getting path:".$e->getMessage());
            }

            $user->profile_picture = $imageUrl;
            $user->save();

        });

    }


}
