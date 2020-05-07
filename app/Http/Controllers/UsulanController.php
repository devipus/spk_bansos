<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Usulan;

use Validator;
use routes;
use App\Http\Requests\UsulanRequest;
use Illuminate\Support\Facades\DB;

class UsulanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('usulan');
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
    public function store(UsulanRequest $request)
    {
        $data = [ 
            'kode' => $request['kode'],
            'nama' => $request['nama'],
            'kec' => $request['kec'],
            'kel' => $request['kel'],
            'alamat' => $request['alamat'],
        ];

        return Usulan::create($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Usulan  $usulan
     * @return \Illuminate\Http\Response
     */
    public function show(Usulan $usulan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Usulan  $usulan
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $usulan = Usulan::find($id);
        return $usulan;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Usulan  $usulan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $usulan = Usulan::find($id);

        $usulan->kode = $request['kode'];
        $usulan->nama = $request['nama'];
        $usulan->kec = $request['kec'];
        $usulan->kel = $request['kel'];
        $usulan->alamat = $request['alamat'];

        $usulan->update();
        return $usulan;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Usulan  $usulan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if($usulanDel = Usulan::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }

    public function apiUsulan()
    {
        $usulan = Usulan::all();

        return DataTables::of($usulan)
            ->addColumn('action', function($usulan) {
                return  
                        '<a onclick="editForm('. $usulan->id_usulan .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $usulan->id_usulan .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;

            })->make(true);
    }

    public function dataExport(){
        $data = Usulan::select('id_usulan', 'kode', 'nama', 'kec', 'kel', 'alamat')->get();

        header("Content-type: application/vnd-ms-excel");
        header("Content-Disposition: attachment; filename=Data usulan.xls");

        ?>

        <table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Kode</th>
                    <th>Nama Warga</th>
                    <th>Kecamatan</th>
                    <th>Kelurahan</th>
                    <th>Alamat</th>
                </tr>
            </thead>

            <tbody>
                <?php
                    $b=1;
                    foreach ($data as $key => $value) {
                ?> 
                    <tr>
                        <td> <?php echo $b ?></td>
                        <td> <?php echo $value->no_bdt; ?></td>
                        <td> <?php echo $value->nama; ?></td>
                        <td> <?php echo $value->kec; ?></td>
                        <td> <?php echo $value->kel; ?></td>
                        <td> <?php echo $value->alamat; ?></td>
                    </tr>
                <?php
                    $b++;
                    }

                ?>
            
            </tbody>
        </table>
<?php
    }
    
}

