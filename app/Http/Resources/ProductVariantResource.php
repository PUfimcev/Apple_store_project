<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property mixed $sku
 * @property mixed $images
 * @property mixed $slug
 * @property mixed $name
 * @property mixed $properties
 * @property mixed $discount_price
 * @property mixed $price
 * @property mixed $id
 */
class ProductVariantResource extends JsonResource
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
            'sku' => $this->sku,
            'slug' => $this->slug,
            'name' => $this->name,
            'properties' => $this->properties,
            'price' => $this->price,
            'discount_price' => $this->discount_price,
            'stock' => $this->stock ?? 0,
            'image_url' => ProductVariantImagesResource::collection($this->images),
        ];
    }
}
