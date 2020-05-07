<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usulan extends Model
{

   Protected $primaryKey ='id_usulan';
   Protected $fillable=['id_usulan','kode','nama','kec','kel','alamat'];

   
}
