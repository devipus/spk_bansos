<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subkriteria extends Model
{
    Protected $primaryKey ='id_subkri';
   	Protected $fillable=['id_subkri','kriteria','subkriteria','nilai'];
}
