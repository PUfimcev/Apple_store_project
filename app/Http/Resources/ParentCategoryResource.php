<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property mixed $id
 * @property mixed $parent_id
 * @property mixed $slug
 * @property mixed $name
 * @property mixed $description
 * @property mixed $image_url
 * @property mixed $is_new
 * @property mixed $subcategories
 * @property mixed $allProducts
 */
class ParentCategoryResource extends JsonResource
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
            'subcategories' => CategoryResource::collection($this->subcategories),
            'all_products' => ProductResource::collection($this->allProducts),
        ];
    }
}
