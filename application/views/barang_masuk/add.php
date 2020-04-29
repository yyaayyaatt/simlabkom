<script>
	$(document).ready(function() {
		$('body').on('change', '#select', function() {
			$('#id_inventaris').val(this.value);
		});
	});
</script>
<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
				  <h3 class="box-title">Tambah Data Inventaris</h3>
				  <p><i>Kode Inventaris akan dibuatkan otomatis</p></i>
            </div>
            <?php echo form_open('barang_masuk/add'); ?>
          	<div class="box-body">
          		<div class="row clearfix">
					<div class="col-md-6">
						<label for="id_barang" class="control-label">Barang</label>
						<div class="form-group">
							<select class="form-control" id="select" name="id_barang">
								<?php foreach($barang as $la){ ?>
									<option value="<?php echo $la['id_barang']; ?>"><?php echo $la['nm_barang']; ?>   </option>
								<?php } ?>
							</select>
							</div>
					</div>
					<div class="col-md-6">
						<label for="id_ruangan" class="control-label">Ruangan</label>
						<div class="form-group">
							<select class="form-control" name="id_ruangan">
								<?php foreach($ruangan as $la){ ?>
									<option value="<?php echo $la['id_ruangan']; ?>"><?php echo $la['nm_ruangan']; ?>   </option>
								<?php } ?>
							</select>
							</div>
					</div>
					<div class="col-md-6">
						<label for="ket_kondisi" class="control-label">Keterangan Kodisi</label>
						<div class="form-group">
							<textarea name="ket_kondisi" class="form-control" id="ket_kondisi"><?php echo $this->input->post('ket_kondisi'); ?></textarea>
						</div>
					</div>
				</div>
			</div>
          	<div class="box-footer">
            	<button type="submit" class="btn btn-success">
            		<i class="fa fa-check"></i> Save
            	</button>
          	</div>
            <?php echo form_close(); ?>
      	</div>
    </div>
</div>