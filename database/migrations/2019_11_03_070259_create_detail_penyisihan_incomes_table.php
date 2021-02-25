<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailPenyisihanIncomesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail_penyisihan_incomes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('nominal');
            $table->timestamp('waktu');
            $table->integer('id_tabungan_berencana')->unsigned();
            $table->foreign('id_tabungan_berencana')->references('id')->on('tabungan_berencanas')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('detail_penyisihan_incomes');
    }
}
