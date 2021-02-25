<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTabunganBerencanasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tabungan_berencanas', function (Blueprint $table) {
            $table->string('foto');
            $table->boolean('reminder')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tabungan_berencanas', function (Blueprint $table) {
            $table->dropColumn('foto');
            $table->dropColumn('reminder');
        });
    }
}
