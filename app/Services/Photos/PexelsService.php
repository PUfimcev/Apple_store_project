<?php

namespace App\Services\Photos;

use App\Interfaces\ApiService;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Support\Facades\Log;
class PexelsService implements ApiService
{
    protected Client $client;

    public function __construct()
    {
        try {

            $this->client = new Client([
                'base_uri' => config('services.pexels.base_uri'),
                'headers' => [
                    'Authorization' => config('services.pexels.api_key'),
                ],
            ]);
        } catch (ClientException $exception) {
            Log::error("API connection error: " .$exception->getMessage());

        }
    }
    /**
     * @return Client|null
     */
    public function getApiConnection(): ?Client
    {
        return $this->client;

    }
}


