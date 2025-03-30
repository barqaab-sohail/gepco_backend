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
        Schema::create('sub_divisions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('division_id')->constrained();
            $table->foreignId('company_id')->constrained();
            $table->string('name');
            $table->string('code');
            $table->timestamps();
            $table->index('division_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_divisions');


    }
};
