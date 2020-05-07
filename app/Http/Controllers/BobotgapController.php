<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Bobotgap;

use Validator;
use routes;

use App\Http\Requests\BobotgapRequest;
use Illuminate\Support\Facades\DB;

class BobotgapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('bobotgap');
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
    public function store(BobotgapRequest $request)
    {
        $data = [
            'selisih' => $request['selisih'],
            'bobot' => $request['bobot'],
        ];

        return Bobotgap::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Bobotgap  $bobotgap
     * @return \Illuminate\Http\Response
     */
    public function show(Bobotgap $bobotgap)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Bobotgap  $bobotgap
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $bobotgap = Bobotgap::find($id);
        return $bobotgap;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Bobotgap  $bobotgap
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $bobotgap = Bobotgap::find($id);

        $bobotgap->selisih = $request['selisih'];
        $bobotgap->bobot = $request['bobot'];

        $bobotgap->update();
        return $bobotgap;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Bobotgap  $bobotgap
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($bobotgapDel = Bobotgap::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }

    public function apiBobotgap()
    {
        $bobotgap = Bobotgap::all();

        return DataTables::of($bobotgap)
            ->addColumn('action', function($bobotgap) {
                return  
                        '<a onclick="editForm('. $bobotgap->id_bobotgap .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $bobotgap->id_bobotgap .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);
    }
}
