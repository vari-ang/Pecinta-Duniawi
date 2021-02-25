<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailPengeluaransTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail_pengeluarans', function (Blueprint $table) {
            $table->increments('id');
            $table->string('foto')->nullable();
            $table->string('keterangan')->nullable();
            $table->timestamp('waktu');
            $table->integer('nominal');
            $table->integer('id_user')->unsigned()->nullable();
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->integer('id_pengeluaran')->unsigned()->nullable();
            $table->foreign('id_pengeluaran')->references('id')->on('pengeluarans')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('detail_pengeluarans');
    }
}
