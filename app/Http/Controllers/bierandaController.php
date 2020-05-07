<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Proyek;

use Validator;
use routes;
use App\Http\Requests\ProyekRequest;
use Illuminate\Support\Facades\DB;
class ProyekController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view ('proyek');
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
    public function store(ProyekRequest $request)
    {
        //id_proyek','proyek','budget','dp','lokasi','harga','bonus
         $data = [
        'nama_proyek' => $request['nama_proyek'],
        'ket' => $request['ket'],
      
       
   
        ];

       return Proyek::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Proyek  $proyek
     * @return \Illuminate\Http\Response
     */
    public function show(Proyek $proyek)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Proyek  $proyek
     * @return \Illuminate\Http\Response
     */
   public function edit($id)
    {

        $Proyek = Proyek::find($id);
        return $Proyek;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Proyek  $proyek
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
 //id_proyek','proyek','budget','dp','lokasi','harga','bonus
        
        $Proyek = Proyek::find($id);
            $Proyek->nama_proyek =$request['nama_proyek'];
            $Proyek->ket =$request['ket'];
          
          
        $Proyek->update();
        return $Proyek;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
   {
    if($ProyekDel = Proyek::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }
     public function  apiProyek()
    {

//$user=\Auth::user();
          // $Proyek = Proyek::find($user->id);

     $Proyek = Proyek::all();
       //$Proyek= siswa::where('id','=',$id)->first();
  // $Proyek = Proyek::where('user_id','=',\Auth::user()->id)->with('kegiatan')->get();
      ///  $Proyek = Proyek::select('tanggal',DB::raw("(SUM(ns_siang)) as ns_siang"),DB::raw("(SUM(tkno_siang)) as tkno_siang"),DB::raw("(SUM(tamu_siang)) as tamu_siang"),DB::raw("(SUM(ss_malam)) as ss_malam"),DB::raw("(SUM(ns_malam)) as ns_malam"))->groupBy('tanggal')->get(); //pertanggal,
        return DataTables::of($Proyek)
            ->addColumn('action', function($Proyek) {
                return  
                        '<a onclick="editForm('. $Proyek->id_proyek .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $Proyek->id_proyek .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);
    }

    
}

