<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property mixed $image_url
 * @property mixed $discount_price
 * @property mixed $price
 * @property mixed $description
 * @property mixed $name
 * @property mixed $slug
 * @property mixed $id
 */
class BestSellerResource extends JsonResource
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
            'price' => $this->price,
            'discount_price' => $this->discount_price,
            'image_url' => $this->image_url,
        ];
    }
}
