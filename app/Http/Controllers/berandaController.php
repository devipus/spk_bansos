<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Kriteria;

use Validator;
use routes;
use App\Http\Requests\KriteriaRequest;
use Illuminate\Support\Facades\DB;
class berandaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     
     
 
        return view ('home');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(KriteriaRequest $request)
    {
    


         $data = [
        'nama_kriteria' => $request['nama_kriteria'],
        'kode_kriteria' => $request['kode_kriteria'],
        'bobot' => $request['bobot'],
      
  
      
       
   
        ];

       return Kriteria::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Kriteria  $kriteria
     * @return \Illuminate\Http\Response
     */
    public function show(Kriteria $kriteria)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Kriteria  $kriteria
     * @return \Illuminate\Http\Response
     */
   public function edit($id)
    {

        $Kriteria = Kriteria::find($id);
        return $Kriteria;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Kriteria  $kriteria
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
 //id_kriteria','kriteria','budget','dp','lokasi','harga','bonus
           // Protected $fillable=['id_kriteria','id_kriteria','wilayah','jangkawaktu','harga','dp','pembayaran','ket'];

  
        $Kriteria = Kriteria::find($id);
            $Kriteria->nama_kriteria =$request['nama_kriteria'];
            $Kriteria->kode_kriteria =$request['kode_kriteria'];
            $Kriteria->bobot =$request['bobot'];
          
          
        $Kriteria->update();
        return $Kriteria;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
   {
    if($KriteriaDel = Kriteria::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }
     public function  apiKriteria()
    {

//$user=\Auth::user();
          // $Kriteria = Kriteria::find($user->id);

     $Kriteria = Kriteria::all();
       //$Kriteria= siswa::where('id','=',$id)->first();
  // $Kriteria = Kriteria::where('user_id','=',\Auth::user()->id)->with('kegiatan')->get();
      ///  $Kriteria = Kriteria::select('tanggal',DB::raw("(SUM(ns_siang)) as ns_siang"),DB::raw("(SUM(tkno_siang)) as tkno_siang"),DB::raw("(SUM(tamu_siang)) as tamu_siang"),DB::raw("(SUM(ss_malam)) as ss_malam"),DB::raw("(SUM(ns_malam)) as ns_malam"))->groupBy('tanggal')->get(); //pertanggal,
        return DataTables::of($Kriteria)
            ->addColumn('action', function($Kriteria) {
                return  
                        '<a onclick="editForm('. $Kriteria->id_kriteria .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $Kriteria->id_kriteria .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);
    }

    
}

