@extends('layouts.layout')

@section('title')
 home
@endsection

@section('content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Hasil Perankingan
        <small>Silahkan Cari Data</small>
      </h1>
      <ol class="breadcrumb">
        
      </ol>
    </section>
    

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <form id="form-contact" method="get" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" autocomplete="off">
                {{ csrf_field() }} {{ method_field('GET') }}
                   
     <div class="">
      <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            
                <div class="panel-body">
                    <div class="row">
             
               <div class="col-md-2">
               </div>
                <div class="col-md-4">
                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Periode</label>
                            <div class="col-md-8">
                          <select id="tahun" name="tahun" class="form-control" >
                            <option value="">Pilih Periode
                            <?php
                              for($e = date('Y', strtotime('+ 2 year')); $e > date('Y', strtotime('-2 year')); $e--){
                                echo "<option value='" . $e . "'>" .  $e;
                              }
                            ?>
                          </select>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                
                     </div>

                    <button type="submit" class="btn btn-success btn-save">Lihat</button>
                    
            </form>

                </div>
            </div>
        </div>
      </div>

    </div>


                </div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
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



    table = $('#ranking-table').DataTable({
        processing: true,
        serverSide: true,
        Pagination: 10,
        iDisplayLength: 5,
        responsive: true,

        ajax: "{{ route('api.ranking') }}",
        columns: [

          
              {
                data: 'tahun',
                name: 'tahun'
            },
            {
                data: 'usulan.nama',
                name: 'usulan.nama'
            },
              {
                data: 'pendapatan.subkriteria.',
                name: 'pendapatan.subkriteria'
            },
              {
                data: 'tanggungan.subkriteria',
                name: 'tanggungan.subkriteria'
            },
              {
                data: 'status_rumah.subkriteria',
                name: 'status_rumah.subkriteria'
            },
              {
                data: 'kondisi_rumah.subkriteria',
                name: 'kondisi_rumah.subkriteria'
            },
             {
                data: 'status_pernikahan.subkriteria',
                name: 'status_pernikahan.subkriteria'
            },
            
            {
                data: 'action',
                name: 'action',
                searchable: false
            }
        ]
    });

    var validator= $('#modal-form form').validator();
        validator.on('submit', function(e) {
        if (!e.isDefaultPrevented()) {
            var id = $('#id_ranking').val();
            if (save_method == 'add') url = "{{ url('ranking') }}";
            else url = "{{ url('ranking') . '/' }}" + id;

            $.ajax({
                url: url,
                type: "POST",
                //                        data : $('#modal-form form').serialize(),
                data: new FormData($("#modal-form form")[0]),
                contentType: false,
                processData: false,
                success: function(data) {
                    if (data.error==1){
                        var dataError = data.data;
                        $('#modal-form .help-block').html('');
                        $.each(dataError, function(e,f){
                            $('#modal-form input[name="' +f.name+ '"]').parents('.form-group').addClass('has-error');
                            $('#modal-form input[name="' +f.name+ '"]').next('.help-block').html(f.message);
                        });
                    }else
                    {


                    $('#modal-form').modal('hide');
                    table.ajax.reload();
                    swal({
                        title: 'Success!',
                        text: '',
                        type: 'success',
                        timer: '1500'
                    });

                }
                },
                error: function(data) {
                    swal({
                        title: 'Oops...',
                        text: data.message,
                        type: 'error',
                        timer: '1500'
                    })
                }
            });
            return false;
        }
    });
});

function editForm(id) {
    save_method = 'edit';
    $('input[name=_method]').val('PATCH');
    $('#modal-form form')[0].reset();
    $.ajax({
        url: "{{ url('ranking') }}" + '/' + id + "/edit",
        type: "GET",
        dataType: "JSON",
        success: function(data) {
            console.log(data);
            $('#modal-form').modal('show');
            $('.modal-title').text('Edit ranking');
         
            $('#id_ranking').val(data.id_ranking);
            $('#tahun').val(data.tahun);
            $('#id_usulan').val(data.id_usulan);
            $('#pendapatan').val(data.pendapatan);
            $('#tanggungan').val(data.tanggungan);
            $('#status_rumah').val(data.status_rumah);
            $('#kondisi_rumah').val(data.kondisi_rumah);
            $('#status_pernikahan').val(data.status_pernikahan);
            
        },
        error: function() {
            alert("Nothing Data");
        }
    });
}



function addForm() {
      save_method = "add";
        $('input[name=_method]').val('POST');
        $('#modal-form').modal('show');
        $('#modal-form form')[0].reset();
        $('.modal-title').text('Add ranking');

}


function deleteData(id) {
    var csrf_token = $('meta[name="csrf-token"]').attr('content');
    swal({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        type: 'warning',
        showCancelButton: true,
        cancelButtonColor: '#d33',
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'Yes, delete it!'
    }).then(function() {
        $.ajax({
            url: "{{ url('ranking') }}" + '/' + id,
            type: "POST",
            data: {
                '_method': 'DELETE',
                '_token': csrf_token
            },
            success: function(data) {
                if (data.success == 1) {
                    table.ajax.reload();
                    swal({
                        title: 'Success!',
                        text: '',
                        type: 'success',
                        timer: '1500'
                    });
                } else {
                    var error = data.error;
                    if (error && error.length > 0) {
                        $.each(data.errors, function(a, b) {
                            $("[name='" + a + "']").parents('.');

                        });
                    } else {
                        swal({
                            title: 'Oops...',
                            text: data.message,
                            type: 'error',
                            timer: '1500'
                        });
                    }
                }
            },
            error: function() {
                swal({
                    title: 'Oops...',
                    text: data.message,
                    type: 'error',
                    timer: '1500'
                })
            }
        });
    });
}
            

</script>
@endsection
