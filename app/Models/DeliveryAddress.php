<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Notifications\Notifiable;

/**
 * @method static findOrCreate(array $array)
 * @method static firstOrCreate(array $array)
 */
class DeliveryAddress extends Model
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'api_user_id',
        'address',
        'city',
        'postal_code',
        'country'
    ];


    /**
     * @return HasMany
     */
    public function orders(): HasMany
    {
        return $this->hasMany(Order::class);
    }

    public function apiUser(): BelongsTo
    {
        return $this->belongsTo(ApiUser::class);
    }

}
