<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Notifications\Notifiable;

class ProductImage extends Model
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'url'
    ];

    protected $touches = ['productVariants'];
    /**
     * @return BelongsToMany
     */
    public function productVariants(): BelongsToMany
    {
        return $this->belongsToMany(ProductVariant::class);
    }
}
