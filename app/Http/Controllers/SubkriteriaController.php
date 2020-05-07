<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Subkriteria;

use Validator;
use routes;
use App\Http\Requests\SubkriteriaRequest;
use Illuminate\Support\Facades\DB;

class SubkriteriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('subkriteria');
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
    public function store(SubkriteriaRequest $request)
    {
        $data = [
            'kriteria' => $request['kriteria'],
            'subkriteria' => $request['subkriteria'],
            'nilai' => $request['nilai'],
        ];

        return Subkriteria::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Subkriteria  $subkriteria
     * @return \Illuminate\Http\Response
     */
    public function show(Subkriteria $subkriteria)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Subkriteria  $subkriteria
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $subkriteria = Subkriteria::find($id);
        return $subkriteria;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Subkriteria  $subkriteria
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $subkriteria = Subkriteria::find($id);

        $subkriteria->kriteria =$request['kriteria'];
        $subkriteria->subkriteria =$request['subkriteria'];
        $subkriteria->nilai =$request['nilai'];

        $subkriteria->update();
        return $subkriteria;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Subkriteria  $subkriteria
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($subkriteriaDel = Subkriteria::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }

    public function apiSubkriteria()
    {
        $subkriteria = Subkriteria::all();

        return DataTables::of($subkriteria)
            ->addColumn('action', function($subkriteria) {
                return  
                        '<a onclick="editForm('. $subkriteria->id_subkri .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $subkriteria->id_subkri .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);
    }
}
