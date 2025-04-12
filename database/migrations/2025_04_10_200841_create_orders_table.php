<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('api_user_id')->constrained('api_users')->onUpdate('cascade')->onDelete('cascade');
            $table->decimal('total_amount', 10, 2);
            $table->string('payment_method')->default('credit_card'); // credit_card, cash
            $table->foreignId('delivery_address_id')->constrained('delivery_addresses')->onUpdate('cascade')->onDelete('cascade');
            $table->enum('status', ['pending', 'processing' ,'completed', 'cancelled']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
