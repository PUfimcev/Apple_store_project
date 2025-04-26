<?php

namespace App\Models;

use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Category extends Model
{
    use HasFactory, Notifiable, softDeletes;

    protected array $dates = ['deleted_at'];
    protected $fillable = [
        'parent_id',
        'slug',
        'name',
        'description',
        'image_url'
    ];

    protected $appends = ['parent_name'];


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

    public function getParentNameAttribute()
    {
        return $this->category ? $this->category->name : null;

    }

}
