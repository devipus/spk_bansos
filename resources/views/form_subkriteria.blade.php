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
                    <input type="hidden" id="id_subkri" name="id_subkri">
                    

            <div class="row">

              <div class="col-md-6">
                  <div class="form-group">
                      <label for="" class="col-md-4 control-label">Kriteria</label>
                      <div class="col-md-8">
                         <select id="kriteria" name="kriteria" class="form-control">
                          <option value="pendapatan">Pendapatan</option>
                          <option value="tanggungan">Tanggungan</option>
                          <option value="status_rumah">Status Rumah</option>
                          <option value="kondisi_rumah">Kondisi Rumah</option>
                          <option value="status_pernikahan">Status Pernikahan</option>
                        </select>
                      </div>
                    </div>

                  <div class="form-group">
                    <label for="" class="col-md-4 control-label">Subkriteira</label>
                      <div class="col-md-8">
                          <input type="text" id="subkriteria" name="subkriteria" class="form-control" >
                          <span class="help-block with-errors"></span>
                      </div>
                  </div>

                  <div class="form-group">
                    <label for="" class="col-md-4 control-label">Nilai</label>
                      <div class="col-md-8">
                          <input type="text" id="nilai" name="nilai" class="form-control" >
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













