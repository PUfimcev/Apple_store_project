<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

/**
 * @method static whereIn(string $string, $bestSellerProductVariantIds)
 */
class ProductVariant extends Model
{
    use HasFactory, Notifiable, softDeletes;

    protected $fillable = [
        'product_id',
        'sku',
        'slug',
        'name',
        'properties',
        'price',
        'discount_price',
        'stock'
    ];
    protected $dates = ['deleted_at'];

    protected $touches = ['product'];

    protected $casts = [
        'properties' => 'array',
    ];


    /**
     * @return BelongsTo
     */
    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class);
    }

    public function category(): HasOneThrough
    {
        return $this->hasOneThrough(Category::class, Product::class, 'id', 'id', 'product_id', 'category_id');
    }
    /**
     * @return BelongsToMany
     */
    public function orders(): belongsToMany
    {
        return $this->belongsToMany(Order::class)->withPivot('quantity', 'price', 'discount_price')->withTimestamps();
    }

    /**
     * @return BelongsToMany
     */
    public function images(): BelongsToMany
    {
        return $this->belongsToMany(ProductImage::class);
    }


}
