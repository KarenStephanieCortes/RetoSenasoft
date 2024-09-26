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
        Schema::create('lab_order_results', function (Blueprint $table) {
            $table->id('id_lab_order_result');
            $table->timestamp('date_result');
            $table->unsignedBigInteger('id_order');
            $table->unsignedBigInteger('id_procedure');
            $table->unsignedBigInteger('id_test');
            $table->unsignedBigInteger('id_option_test');
            $table->enum('option_result', ['bajo', 'normal', 'alto']);
            $table->float('number_result');
            $table->text('text_result');
            $table->text('memo_result');
            $table->integer('num_processings');

            $table->foreign('id_order')->references('id_order_lab')->on('lab_orders');
            $table->foreign('id_procedure')->references('id')->on('lab_procedures');
            $table->foreign('id_test')->references('id')->on('lab_tests');
            $table->foreign('id_option_test')->references('id')->on('lab_options_tests');
        
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lab_order_results');
    }
};
