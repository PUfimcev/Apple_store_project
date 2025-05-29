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
        Schema::table('api_users', function (Blueprint $table) {
            $table->string('access_token')->nullable()->after('last_login_at');
            $table->string('refresh_token')->nullable()->after('access_token');
            $table->timestamp('token_expires_at')->nullable()->after('refresh_token');
            $table->timestamp('refresh_token_expires_at')->nullable()->after('token_expires_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('api_users', function (Blueprint $table) {
            $table->dropColumn(['access_token', 'refresh_token', 'token_expires_at', 'refresh_token_expires_at']);
        });
    }
};
