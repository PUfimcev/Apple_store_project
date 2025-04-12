<?php

namespace App\Models;

use App\Enums\OrderStatus;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Order extends Model
{
    use HasFactory, Notifiable, softDeletes;

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


    /**
     * @var \class-string[]
     */
    protected $casts = [
        'status' => OrderStatus::class,
    ];
}
