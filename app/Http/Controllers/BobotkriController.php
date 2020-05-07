<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Bobotkri;

use Validator;
use routes;

use App\Http\Requests\BobotkriRequest;
use Illuminate\Support\Facades\DB;

class BobotkriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('bobotkri');
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
    public function store(BobotkriRequest $request)
    {
        $data = [
            'tahun' => $request['tahun'],
            'pendapatan' => $request['pendapatan'],
            'tanggungan' => $request['tanggungan'],
            'status_rumah' => $request['status_rumah'],
            'kondisi_rumah' => $request['kondisi_rumah'],
            'status_pernikahan' => $request['status_pernikahan'],

        ];

        return Bobotkri::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Bobotkri  $bobotkri
     * @return \Illuminate\Http\Response
     */
    public function show(Bobotkri $bobotkri)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Bobotkri  $bobotkri
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $bobotkri = Bobotkri::find($id);
        return $bobotkri;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Bobotkri  $bobotkri
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $bobotkri = Bobotkri::find($id);

        $bobotkri->tahun =$request['tahun'];
        $bobotkri->pendapatan =$request['pendapatan'];
        $bobotkri->tanggungan =$request['tanggungan'];
        $bobotkri->status_rumah =$request['status_rumah'];
        $bobotkri->kondisi_rumah =$request['kondisi_rumah'];
        $bobotkri->status_pernikahan =$request['status_pernikahan'];
       
        $bobotkri->update();
        return $bobotkri;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Bobotkri  $bobotkri
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($bobotkriDel = Bobotkri::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }

    public function apiBobotkri()
    {
        $bobotkri = Bobotkri::all();

        return DataTables::of($bobotkri)
            ->addColumn('action', function($bobotkri) {
                return  
                        '<a onclick="editForm('. $bobotkri->id_bobotkri .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $bobotkri->id_bobotkri .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);

    }
}
