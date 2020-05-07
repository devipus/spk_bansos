<?php

namespace App;

use App\Usulan;
use App\Subkriteria;
use Illuminate\Database\Eloquent\Model;

class Penilaian extends Model
{

	Protected $primaryKey ='id_penilaian';
  	Protected $fillable=['id_penilaian','tahun','id_usulan','pendapatan','tanggungan','status_rumah','kondisi_rumah','status_pernikahan'];

  												//field di model yang dipanggil, field di tabel
  	public function usulan(){
  		return $this -> hasOne (Usulan::class, 'id_usulan', 'id_usulan');
  	}

   public function pendapatan1(){
         return $this -> hasOne (Subkriteria::class, 'id_subkri', 'pendapatan');
   }

   public function tanggungan1(){
         return $this -> hasOne (Subkriteria::class, 'id_subkri', 'tanggungan');
   }

   public function status_rumah1(){
         return $this -> hasOne (Subkriteria::class, 'id_subkri', 'status_rumah');
   }

   public function kondisi_rumah1(){
         return $this -> hasOne (Subkriteria::class, 'id_subkri', 'kondisi_rumah');
   }

   public function status_pernikahan1(){
         return $this -> hasOne (Subkriteria::class, 'id_subkri', 'status_pernikahan');
   }
}
