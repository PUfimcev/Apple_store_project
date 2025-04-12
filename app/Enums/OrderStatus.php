<?php

namespace App\Enums;

use App\Interfaces\EnumsGetDescriptionInterface;

enum OrderStatus: string  implements EnumsGetDescriptionInterface
{
    case PENDING = 'pending';
    case PROCESSING = 'processing';
    case COMPLETED = 'completed';
    case CANCELLED = 'cancelled';

    public function getDescription(): string
    {
        return match ($this) {
            self::PENDING => 'Order is sent for processing',
            self::PROCESSING => 'Order is being processed',
            self::COMPLETED => 'Order is completed',
            self::CANCELLED => 'Order is cancelled',
        };
    }
}
