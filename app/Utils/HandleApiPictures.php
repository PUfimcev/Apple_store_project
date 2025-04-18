<?php

namespace App\Utils;

use App\Interfaces\ApiService;
use GuzzleHttp\Exception\GuzzleException;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use JsonException;

class HandleApiPictures
{
    protected ApiService $apiPictureService;

    public function __construct(ApiService $apiPictureService)
    {
        $this->apiPictureService = $apiPictureService;
    }


    /**
     * @param string|null $query
     * @param int|null $perPage
     * @return array
     * @throws JsonException
     */
    public function getApiData(?string $query, ?int $perPage): array
    {
        try {
            $response = $this->apiPictureService->getApiConnection()?->get('search', [
                'query' => [
                    'query' => $query,
                    'per_page' => $perPage,
                ],
            ]);
        } catch (GuzzleException $e) {
            Log::error($e->getMessage());
        }

        return json_decode($response->getBody()->getContents(), true, 512, JSON_THROW_ON_ERROR)['photos'] ?? [];
    }

    /**
     * @param string|null $query
     * @param int|null $perPage
     * @param string|null $directoryName
     * @param string|null $imageSize
     * @return array|string
     * @throws JsonException
     */
    public function savePexelsImage(?string $query = null, ?int $perPage = 1, ?string $directoryName = null, ?string $imageSize = 'original'): array|string
    {
        $arrayImageUrls = [];

        $images = $this->getApiData($query, $perPage);
        $this->setDirectory($directoryName);

        foreach ($images as $image) {
            $fileName = basename(parse_url($image['src'][$imageSize], PHP_URL_PATH));
            Storage::put($directoryName . '/' . $fileName, file_get_contents($image['src'][$imageSize]));
            $filePath = Storage::url($directoryName . '/' . $fileName);
            $arrayImageUrls[] = $filePath;
        }

        return ($perPage === 1) ? current($arrayImageUrls) : $arrayImageUrls;
    }

    /**
     * @param string $directoryName
     * @return void
     */
    public function setDirectory(string $directoryName): void
    {
        if (Storage::exists($directoryName)) {
            return;
        }
        Storage::makeDirectory($directoryName);
    }
}
