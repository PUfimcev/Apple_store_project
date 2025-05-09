<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property mixed $is_new
 * @property mixed $image_url
 * @property mixed $description
 * @property mixed $name
 * @property mixed $slug
 * @property mixed $id
 */
class NewProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'slug' => $this->slug,
            'name' => $this->name,
            'description' => $this->description,
            'image_url' => $this->image_url,
            'is_new' => $this->is_new,
        ];
    }
}
