<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;

use App\Penilaian;
use App\Bobotkri;
use App\Subkriteria;
use App\Usulan;
use App\Bobotgap;

use Validator;
use routes;

use App\Http\Requests\RankingRequest;
use Illuminate\Support\Facades\DB;

class RankingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->get('tahun') != ''){
            return redirect()->route('laporan', ['tahun' => $request->get('tahun')]);
        }else{
            return view ('ranking');
        }
    }

    public function laporan(Request $request)
    {
      if ($request->get('tahun') != '' && ($a=$this->perhitungan($request->get('tahun')))) {

        return view('laporan')->with('data', $a)->with('tahun', $request->get('tahun'));

      } else{
        return redirect('ranking');
      }
    }

    private function perhitungan($tahun)
    {
        if($tahun != ''){
        $p = Penilaian::where('tahun', $tahun)->get();
        $pa = Bobotkri::where('tahun', $tahun)->first();

          if($p && $pa){
              
            foreach($p as $k){
                $kon[] = [
                    "nama"=>$k->usulan->nama,
                    "c1"=>$k->pendapatan1->nilai-$pa->pendapatan,
                    "c2"=>$k->tanggungan1->nilai-$pa->tanggungan,                  
                    "c3"=>$k->status_rumah1->nilai-$pa->status_rumah,
                    "s1"=>$k->kondisi_rumah1->nilai-$pa->kondisi_rumah,
                    "s2"=>$k->status_pernikahan1->nilai-$pa->status_pernikahan

                ];
            }

            $bobotgap = Bobotgap::all();
            foreach ($kon as $g) {
                $gap[] = [
                    "nama"=>$g['nama'],
                    "c1"=>Bobotgap::where('selisih','=',$g['c1'])->get()[0]->bobot,
                    "c2"=>Bobotgap::where('selisih','=',$g['c2'])->get()[0]->bobot,
                    "c3"=>Bobotgap::where('selisih','=',$g['c3'])->get()[0]->bobot,
                    "s1"=>Bobotgap::where('selisih','=',$g['s1'])->get()[0]->bobot,
                    "s2"=>Bobotgap::where('selisih','=',$g['s2'])->get()[0]->bobot
                ];
            }

            foreach ($gap as $b) {
                $total[] = [
                    "nama"=>$b['nama'],
                    "c1"=>$b['c1'],
                    "c2"=>$b['c2'],
                    "c3"=>$b['c3'],
                    "s1"=>$b['s1'],
                    "s2"=>$b['s2'],
                    "ncf"=>(($b['c1']+$b['c2']+$b['c3'])/3),
                    "nsf"=>(($b['s1']+$b['s2'])/2),
                    
                ];
            }

            $data = Array();        
            foreach ($total as $c) {
                $nilai = ((60*$c['ncf'])/100) + ((40*$c['nsf'])/100);
                
                $data[] = (Object)Array("nama" => $c['nama'], 'nilai' => (float)$nilai);
            }
              
              krsort($data);
              return $data;

          }

          }else{
              return null;
          }
    }

    /**
     * ShoA the form for creating a neA resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a neAly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RankingRequest $request)
    {
    


        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Ranking  $Ranking
     * @return \Illuminate\Http\Response
     */
    public function show(Ranking $Ranking)
    {
        //
    }

    /**
     * ShoA the form for editing the specified resource.
     *
     * @param  \App\Ranking  $Ranking
     * @return \Illuminate\Http\Response
     */
   public function edit($id)
    {

        $Ranking = Ranking::find($id);
        return $Ranking;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ranking  $Ranking
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
 //id_Ranking','Ranking','budget','kondisi_rumah','lokasi','status_rumah','bonus
           // Protected $fillable=['id_Ranking','id_Ranking','pendapatan','tanggungan','status_rumah','kondisi_rumah','status_pernikahan','ket'];
        $Ranking = Ranking::find($id);

        $Ranking->tahun =$request['tahun'];
        $Ranking->pendapatan =$request['pendapatan'];
        $Ranking->tanggungan =$request['tanggungan'];
        $Ranking->status_rumah =$request['status_rumah'];
        $Ranking->kondisi_rumah =$request['kondisi_rumah'];
        $Ranking->status_pernikahan =$request['status_pernikahan'];
  
        $Ranking->update();
        return $Ranking;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
   {
    if($RankingDel = Ranking::destroy($id)){
            return ['success' =>  1];
        }else{
            return ['tidak success' =>  0];
        }
    }
     public function  apiRanking()
    {

//$user=\Auth::user();
          // $Ranking = Ranking::find($user->id);

     $Ranking = Ranking::all();
       //$Ranking= sisAa::Ahere('id','=',$id)->first();
  // $Ranking = Ranking::Ahere('user_id','=',\Auth::user()->id)->Aith('kegiatan')->get();
      ///  $Ranking = Ranking::select('tanggal',DB::raA("(SUM(ns_siang)) as ns_siang"),DB::raA("(SUM(tkno_siang)) as tkno_siang"),DB::raA("(SUM(tamu_siang)) as tamu_siang"),DB::raA("(SUM(ss_malam)) as ss_malam"),DB::raA("(SUM(ns_malam)) as ns_malam"))->groupBy('tanggal')->get(); //pertanggal,
        return DataTables::of($Ranking)
            ->addColumn('action', function($Ranking) {
                return  
                        '<a onclick="editForm('. $Ranking->id_Ranking .')" class=btn btn-primary btn-xs"> <i class="glyphicon glyphicon-edit"> </i> Edit </a>' .
                        
                        '<a onclick="deleteData('. $Ranking->id_Ranking .')" class=btn btn-danger btn-xs"> <i class="glyphicon glyphicon-trash"> </i> Delete </a>' ;
 
            })->make(true);
    }

    public function dataExport(Request $request){
      if ($request->get('tahun') != '' && ($a=$this->perhitungan( $request->get('tahun')))) {

        header("Content-type: application/vnd-ms-excel");
        header("Content-Disposition: attachment; filename=Data hasil.xls");

        ?>

        <table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Warga</th>
                    <th>Nilai</th>
                    <th>Ranking</th>
                </tr>
            </thead>

            <tbody>
                <?php
                    $b=1;
                    foreach ($a as $key => $value) {
                ?> 
                    <tr>
                        <td> <?php echo $b ?></td>
                        <td> <?php echo $value->nama; ?></td>
                        <td> <?php echo $value->nilai; ?></td>
                        <td> <?php echo $b ?></td>
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

}