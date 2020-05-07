

@extends('layouts.layout')

@section('title')
 home
@endsection

@section('content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        FORM Hasil
        <small></small>
      </h1>
      <ol class="breadcrumb">
        
      </ol>
    </section>
    

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Form Hasil</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
         <div class="panel-body">
                   
     <div class="">
      <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Data Hasil
                         <a href="{{ route('ranking.export', ['tahun'=> $tahun]) }}" class="btn btn-success pull-right" style="margin-top: -8px;"><i class="fa fa-donwload"></i> Unduh</a>
                    </h4>
                </div>
                <div class="panel-body">
                    <table id="ranking-table" class="table table-striped">
                        <thead>
                          <tr>
                            <th>NO.</th>
                            <th>Nama Usulan</th>
                            <th>Bobot</th>
                            <th>Ranking</th>
                            
                          </tr>

                        <?php 
                        $i = 1;
                        foreach($data as $e => $f){ ?>
                          <tr>
                            <td><?php echo $i ?></td>
                            <td><?php echo $f->nama; ?></td>
                            <td><?php echo $f->nilai; ?></td>
                            <td><?php echo $i ?></td>
                          </tr>
                          <?php 
                          $i++;
                        } ?>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
      </div>

      
    </div>


                </div>
        </div>
        <!-- /.box-body -->
        
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- Content Header (Page header) -->
@endsection    

@section('script')
<script type="text/javascript">
 var table
$(document).ready(function() {



    table = $('#hasil-table').DataTable({
        processing: true,
        serverSide: true,
        bLengthChange: true,
        iDisplayLength: 5,
        responsive: true,

        
    });

   
}
            

</script>
@endsection
