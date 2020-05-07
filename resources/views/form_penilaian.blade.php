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
                    <input type="hidden" id="id_penilaian" name="id_penilaian">
                    

            <div class="row">
             
                <div class="col-md-6">
                  <div class="form-group">
                      <label for="" class="col-md-4 control-label">Periode</label>
                        <div class="col-md-8">
                          <select id="tahun" name="tahun" class="form-control" >
                            <option value="">-- Pilih Periode --
                            <?php
                              for($e = date('Y', strtotime('+ 2 year')); $e > date('Y', strtotime('-2 year')); $e--){
                                echo "<option value='" . $e . "'>" .  $e;
                              }
                            ?>
                          </select>
                          <span class="help-block with-errors"></span>
                      </div>
                  </div>

                  <div class="form-group">
                      <label for="" class="col-md-4 control-label">Nama Usulan</label>
                      <div class="col-md-8">
                           <select id="id_usulan" name="id_usulan" class="form-control">
                                <option value="">Pilih usulan</option>
                                    <?php 
                                      foreach ($usulan  as $key => $value) {
                                        echo '<option value="'.$value->id_usulan.'">'.$value->nama.'</option>';
                                      }
                                    ?>
                            </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Pendapatan</label>
                      <div class="col-md-8">
                              <select id="pendapatan" name="pendapatan" class="form-control">
                                  <option value="">Pilih Pendapatan</option>
                                    <?php 
                                      foreach ($pendapatan1  as $key => $value) {
                                        echo '<option value="'.$value->id_subkri.'">'.$value->subkriteria.'</option>';
                                      }
                                    ?>
                              </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Tanggungan</label>
                      <div class="col-md-8">
                          <select id="tanggungan" name="tanggungan" class="form-control">
                                <option value="">Pilih Tanggungan</option>
                                    <?php 
                                      foreach ($tanggungan1  as $key => $value) {
                                        echo '<option value="'.$value->id_subkri.'">'.$value->subkriteria.'</option>';
                                      }
                                     ?> 
                          </select>
                      </div>
                    </div>
              </div>

              <div class="col-md-6">
                    <div class="form-group">
                      <label for="" class="col-md-4 control-label">Status Rumah</label>
                      <div class="col-md-8">
                           <select id="status_rumah" name="status_rumah" class="form-control">
                                <option value="">Pilih Status Rumah</option>
                                    <?php 
                                      foreach ($status_rumah1  as $key => $value) {
                                        echo '<option value="'.$value->id_subkri.'">'.$value->subkriteria.'</option>';
                                      }
                                     ?>
                            </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="" class="col-md-4 control-label"> Kondisi Rumah</label>
                      <div class="col-md-8">
                           <select id="kondisi_rumah" name="kondisi_rumah" class="form-control">
                                <option value="">Pilih Kondisi Rumah</option>
                                    <?php 
                                      foreach ($kondisi_rumah1  as $key => $value) {
                                        echo '<option value="'.$value->id_subkri.'">'.$value->subkriteria.'</option>';
                                      }
                                     ?>
                            </select>
                      </div>
                  </div>
                     
                  <div class="form-group">
                      <label for="" class="col-md-4 control-label">Status Pernikahan</label>
                      <div class="col-md-8">
                          <select id="status_pernikahan" name="status_pernikahan" class="form-control">
                                <option value="">Pilih Status Pernikahan</option>
                                    <?php 
                                      foreach ($status_pernikahan1  as $key => $value) {
                                        echo '<option value="'.$value->id_subkri.'">'.$value->subkriteria.'</option>';
                                      }
                                     ?>
                          </select>
                      </div>
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











