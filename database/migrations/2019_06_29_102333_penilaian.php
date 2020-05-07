<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Penilaian extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penilaians', function (Blueprint $table) {
            $table->increments('id_penilaian');
            $table->string('tahun');
            $table->string('id_usulan');
            $table->string('pendapatan');
            $table->string('tanggungan');
            $table->string('status_rumah');
            $table->string('kondisi_rumah');
            $table->string('status_pernikahan');
           
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
        //
    }
}
