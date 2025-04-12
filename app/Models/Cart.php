<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Notifications\Notifiable;

class Cart extends Model
{
    use HasFactory, Notifiable;

    /**
     * @var string[]
     */
    protected $fillable = [
        'api_user_id'
    ];

    /**
     * @return BelongsTo
     */
    public function apiUser(): belongsTo
    {
        return $this->belongsTo(ApiUser::class);
    }


    /**
     * @return BelongsToMany
     */
    public function productVariants(): belongsToMany
    {
        return $this->belongsToMany(ProductVariant::class)->withPivot('quantity')->withTimestamps();
    }


}
