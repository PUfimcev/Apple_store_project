<?php

namespace App\Models;

//use Illuminate\Database\Eloquent\Model;
use Database\Factories\ApiUserFactory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class ApiUser extends Authenticatable
{
    /** @use HasFactory<ApiUserFactory> */
    use HasFactory, Notifiable, softDeletes;

    protected array $dates = [
        'day_of_birth',
        'deleted_at'
    ];
    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'user_name',
        'email',
        'password',
        'first_name',
        'last_name',
        'profile_picture',
        'day_of_birth',
        'phone_number',
        'address',
        'city',
        'is_subscribed',
        'email_verified_at',
        'verification_token',
        'password_reset_token',
        'password_reset_expiration',
        'last_login_at',
    ];

    public function getRouteKeyName(): string
    {
        return 'user_name';
    }

    /**
     * @return HasMany
     */
    public function deliveryAddresses(): HasMany
    {
        return $this->hasMany(DeliveryAddress::class);
    }

    /**
     * @return HasMany
     */
    public function orders(): HasMany
    {
        return $this->hasMany(Order::class);
    }


    /**
     * @return HasOne
     */
    public function cart(): HasOne
    {
        return $this->hasOne(Cart::class);
    }

    /**
     * @return HasOne
     */
    public function bookmark(): HasOne
    {
        return $this->hasOne(Bookmark::class);
    }




    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'verification_token',
        'password_reset_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'last_login_at' => 'datetime',
            'password' => 'hashed',
            'password_reset_expiration' => 'datetime',
            'is_subscribed' => 'boolean',
            'day_of_birth' => 'date',

        ];
    }
}

{
    //
}
