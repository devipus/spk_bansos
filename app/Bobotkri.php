<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bobotkri extends Model
{
    Protected $primaryKey ='id_bobotkri';
   	Protected $fillable=['id_bobotkri','tahun','pendapatan','tanggungan','status_rumah','kondisi_rumah','status_pernikahan'];
}
