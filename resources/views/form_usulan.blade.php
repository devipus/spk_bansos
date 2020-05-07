<div class="modal" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data"  autocomplete="off">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id_usulan" name="id_usulan">
                    

            <div class="row">
             
                <div class="col-md-10">

                  <div class="form-group">
                      <label for="" class="col-md-4 control-label">Kode Usulan</label>
                      <div class="col-md-8">
                          <input type="text" id="kode" name="kode" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Nama Usulan</label>
                      <div class="col-md-8">
                          <input type="text" id="nama" name="nama" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Kecamatan</label>
                      <div class="col-md-8">
                          <input type="text" id="kec" name="kec" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Kelurahan</label>
                      <div class="col-md-8">
                          <input type="text" id="kel" name="kel" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Alamat</label>
                      <div class="col-md-8">
                          <input type="text" id="alamat" name="alamat" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>
            </div>

              </div>

              <div class="modal-footer">
                  <button type="submit" class="btn btn-success btn-save">Simpan</button>
                  <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
              </div>

            </form>
        </div>
    </div>
</div>












