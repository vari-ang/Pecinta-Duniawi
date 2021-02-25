<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailPemasukansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail_pemasukans', function (Blueprint $table) {
            $table->increments('id');
            $table->string('foto')->nullable();
            $table->string('keterangan')->nullable();
            $table->timestamp('waktu');
            $table->integer('nominal');
            $table->integer('id_user')->unsigned()->nullable();
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->integer('id_pemasukan')->unsigned()->nullable();
            $table->foreign('id_pemasukan')->references('id')->on('pemasukans')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('detail_pemasukans');
    }
}
