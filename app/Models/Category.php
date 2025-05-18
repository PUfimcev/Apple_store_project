<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

/**
 * @method static where(string $string, $null)
 * @method static select(string[] $array)
 * @method static newProducts()
 * @method static parentCategories()
 * @method static find(mixed $id)
 * @property mixed $id
 * @property mixed $slug
 * @property mixed $parent_id
 */
class Category extends Model
{
    use HasFactory, Notifiable, softDeletes;

    protected array $dates = ['deleted_at'];
    protected $fillable = [
        'parent_id',
        'slug',
        'name',
        'description',
        'image_url',
        'is_new',
    ];

    protected $appends = ['parent_name'];

    protected $touches = ['category'];

    /**
     * @return string
     */
//    public function getRouteKeyName(): string
//    {
//        // This method is used to specify the column that should be used for route model binding.
//        // In this case, it returns 'slug', which means that when a route parameter is passed,
//        // Laravel will look for a category with the corresponding slug in the database.
//
//        return 'slug';
//    }

    /**
     * @return HasMany
     */
    public function subcategories(): HasMany
    {
        return $this->hasMany(__CLASS__, 'parent_id', 'id');
    }

    /**
     * @return HasMany
     */
    public function products(): HasMany
    {
        return $this->hasMany(Product::class);
    }

    /**
     * @return HasManyThrough
     */
    public function allProducts(): hasManyThrough
    {
        return $this->hasManyThrough(Product::class, __CLASS__, 'parent_id', 'category_id', 'id', 'id');
    }

    /**
     * @return BelongsTo
     */
    public function category(): belongsTo
    {
        return $this->belongsTo(__CLASS__, 'parent_id', 'id');
    }

    /**
     * @return HasManyThrough
     */
    public function productVariants(): HasManyThrough
    {
        return $this->hasManyThrough(ProductVariant::class, Product::class);
    }


    public function ParentName(): Attribute
    {
        return new Attribute(
            get: fn () => $this->parent_id ? $this->category->name : null,
        );
    }


    /**
     * @param $query
     * @return mixed
     */
    public function scopeParentCategories($query): mixed
    {
        return $query->whereNull('parent_id');
    }

    /**
     * @param $query
     * @return mixed
     */
    public function scopeNewProducts($query): mixed
    {
        return $query->whereNotNull('parent_id')->where('is_new', true);
    }


}
