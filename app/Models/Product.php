<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

/**
 * @method static where(string $string, mixed $slug)
 * @property mixed $slug
 */
class Product extends Model
{
    use HasFactory, Notifiable, softDeletes;

    protected array $dates = ['deleted_at'];
    protected $fillable = [
        'category_id',
        'slug',
        'name',
        'description',
        'price',
        'discount_price',
        'image_url',
    ];

    /**
     * @return BelongsTo
     */
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    public function parentCategory(): HasOneThrough
    {
        return $this->hasOneThrough(
            Category::class,
            Category::class,
            'id',        // Дочерняя категория (macbook-air)
            'id',        // Родительская категория (mac)
            'category_id', // Поле в `products`, указывающее на `macbook-air`
            'parent_id' // Поле в `categories`, указывающее на `mac`
        );
    }

/**
 * @return HasMany
 */
public
function productVariants(): HasMany
{
    return $this->hasMany(ProductVariant::class);
}

protected
$casts = [
    'attachments' => 'array',
];


}
