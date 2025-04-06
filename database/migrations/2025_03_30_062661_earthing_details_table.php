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
        Schema::create('earthing_details', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->id();
            $table->foreignId('feeder_id')->constrained();
            $table->string('location')->nullable();
            $table->decimal('latitude', 12, 9);
            $table->decimal('longitude', 12, 9);
            $table->string('tage_no');
            $table->string('chemical');
            $table->integer('Rod');
            $table->decimal('earth_wire', 4, 2);
            $table->decimal('earthing_before', 3, 2)->nullable();
            $table->decimal('earthing_after', 3, 2);
            $table->foreignId('sub_division_id')->constrained();
            $table->foreignId('category_id')->constrained();
            $table->foreignId('tower_structure_id')->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('earthing_details');
    }
};