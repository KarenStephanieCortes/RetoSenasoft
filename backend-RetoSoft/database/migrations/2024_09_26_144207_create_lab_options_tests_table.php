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
        Schema::create('lab_options_tests', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_test');
            $table->string('name', 50);
            $table->float('value_min_f');
            $table->float('value_max_f');
            $table->float('value_min_m');
            $table->float('value_max_m');

            $table->foreign('id_test')->references('id')->on('lab_tests');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lab_options_tests');
    }
};
