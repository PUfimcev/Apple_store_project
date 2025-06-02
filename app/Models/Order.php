<?php

namespace App\Models;

use App\Enums\OrderStatus;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

/**
 * @method static where(string $string, string $string1)
 * @method static create(array $orderParams)
 */
class Order extends Model
{
    use HasFactory, Notifiable, softDeletes;

    protected array $dates = ['deleted_at'];
    /**
     * @var string[]
     */
    protected $fillable = [
        'api_user_id',
        'total_amount',
        'payment_method',
        'delivery_address_id',
        'status'
    ];

    /**
     * @return BelongsTo
     */
    public function apiUser(): belongsTo
    {
        return $this->belongsTo(ApiUser::class);
    }

    /**
     * @return BelongsTo
     */
    public function deliveryAddress(): belongsTo
    {
        return $this->belongsTo(DeliveryAddress::class);
    }

    /**
     * @return BelongsToMany
     */
    public function productVariants(): belongsToMany
    {
        return $this->belongsToMany(ProductVariant::class)->withPivot('quantity', 'price', 'discount_price')->withTimestamps();
    }


    protected $casts = [
        'status' => OrderStatus::class,
    ];
}
