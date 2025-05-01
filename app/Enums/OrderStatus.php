<?php

namespace App\Enums;

use App\Interfaces\EnumsGetDescriptionInterface;
use Filament\Support\Contracts\HasLabel;

enum OrderStatus: string  implements EnumsGetDescriptionInterface, HasLabel
{
    case PENDING = 'pending';
    case PROCESSING = 'processing';
    case COMPLETED = 'completed';
    case CANCELLED = 'cancelled';

    public function getLabel(): ?string
    {
        return $this->name;
    }
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
