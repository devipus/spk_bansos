<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bobotgap extends Model
{
    Protected $primaryKey ='id_bobotgap';
   	Protected $fillable=['id_bobotgap','selisih','bobot'];
}
