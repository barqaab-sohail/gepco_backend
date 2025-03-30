<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('feeders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('grid_station_id')->constrained();
            $table->foreignId('circle_id')->constrained();
            $table->foreignId('division_id')->constrained();
            $table->foreignId('sub_division_id')->constrained();
            $table->string('name');
            $table->string('feeder_code')->nullable();
            $table->string('category');
            $table->timestamps();
            $table->index('feeder_code');
            $table->index('name');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('feeders');
    }
};
