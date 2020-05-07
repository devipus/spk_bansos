<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Penilaian;
use App\Usulan;
use App\Subkriteria;

use Validator;
use routes;

use App\Http\Requests\PenilaianRequest;
use Illuminate\Support\Facades\DB;

class PenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $usulan = Usulan::all();
                    //nama model     //field yg diambil  //field tabel
         $pendapatan1 = Subkriteria::where('kriteria', 'pendapatan')->get();
         $tanggungan1 = Subkriteria::where('kriteria', 'tanggungan')->get();
         $status_rumah1 = Subkriteria::where('kriteria', 'status_rumah')->get();
         $kondisi_rumah1 = Subkriteria::where('kriteria', 'kondisi_rumah')->get();
         $status_pernikahan1 = Subkriteria::where('kriteria', 'status_pernikahan')->get();
    
         return view('penilaian')->with('usulan', $usulan)->with('pendapatan1', $pendapatan1)->with('tanggungan1', $tanggungan1)->with('status_rumah1', $status_rumah1)->with('kondisi_rumah1', $kondisi_rumah1)->with('status_pernikahan1', $status_pernikahan1);
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
    public function store(PenilaianRequest $request)
    {
        $data = [
            'tahun' => $request['tahun'],
            'id_usulan' => $request['id_usulan'],
            'pendapatan' => $request['pendapatan'],
            'tanggungan' => $request['tanggungan'],
            'status_rumah' => $request['status_rumah'],
            'kondisi_rumah' => $request['kondisi_rumah'],
            'status_pernikahan' => $request['status_pernikahan'],
        ];

        return Penilaian::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Penilaian  $penilaian
     * @return \Illuminate\Http\Response
     */
    public function show(Penilaian $penilaian)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Penilaian  $penilaian
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $penilaian = Penilaian::find($id);
        return $penilaian;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Penilaian  $penilaian
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $penilaian = Penilaian::find($id);

        $penilaian->tahun = $request['tahun'];
        $penilaian->id_usulan = $request['id_usulan'];
        $penilaian->pendapatan = $request['pendapatan'];
        $penilaian->tanggungan = $request['tanggungan'];
        $penilaian->status_rumah = $request['status_rumah'];
        $penilaian->kondisi_rumah = $request['kondisi_rumah'];
        $penilaian->status_pernikahan = $request['status_pernikahan'];

        $penilaian->update();
        return $penilaian;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Penilaian  $penilaian
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($penilaianDel = Penilaian::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }

    public function apiPenilaian()
    {
        $penilaian = Penilaian::with('usulan')->with('pendapatan1')->with('tanggungan1')->with('status_rumah1')->with('kondisi_rumah1')->with('status_pernikahan1')->get();

        return DataTables::of($penilaian)
            ->addColumn('action', function($penilaian) {
                return  
                        '<a onclick="editForm('. $penilaian->id_penilaian .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $penilaian->id_penilaian .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);

    }
}
