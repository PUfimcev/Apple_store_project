<?php

namespace App\Interfaces;

use GuzzleHttp\Client;

interface ApiService
{
    /**
     * @param string $query
     * @param int $quantity
     * @return array
     */
    public function getApiConnection(): ?Client;

}
