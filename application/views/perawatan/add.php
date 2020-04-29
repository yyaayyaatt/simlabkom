<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Tambahkan Perangkat Bermasalah</h3>
            </div>
            <?php echo form_open('perawatan/add'); ?>
          	<div class="box-body">
          		<div class="row clearfix">
				  <div class="col-md-6">
						<label for="id_barang">Barang</label>
							<select class="form-control" name="id_inventaris" required>
							<option value='' disabled selected>- Pilih Barang -</option>
								<?php foreach($inventaris as $la){  ?>
								<option value="<?php echo $la['id_inventaris']; ?>"><?php echo $la['id_inventaris'].' - '.$la['nm_barang'].' - '.$la['nm_ruangan']; ?>   </option>
								<?php } ?>
							</select>
					</div>
					<div class="col-md-6">
						<label for="id_kondisi">Kondisi</label>
							<select class="form-control" name="id_kondisi" required>
							<option value='' disabled selected>- Pilih Kondisi -</option>
								<?php foreach($kondisi as $la){ ?>
									<option value="<?php echo $la['id_kondisi']; ?>"><?php echo $la['nm_kondisi']; ?>   </option>
									<?php } ?>
							</select>
					</div>
					<div class="col-md-6">
						<label for="tgl_perawatan">Tgl. Perawatan</label>
							<input type="date" required class="form-control" name="tgl_perawatan" value="<?php echo $this->input->post('tgl_perawatan')?>">
					
					</div>
					<div class="col-md-6">
						<label for="id_cek">Petugas Pengecekan</label>
							<select class="form-control" name="id_cek" required>
							<option value='' disabled selected>- Pilih Petugas -</option>
								<?php foreach($user as $la){ ?>
									<option value="<?php echo $la['id_user']; ?>"><?php echo $la['nama']; ?>   </option>
									<?php } ?>
							</select>
					</div>
					<div class="col-md-6">
						<label for="diagnosa" class="control-label">Diagnosa Kerusakan</label>
							<textarea name="diagnosa" required class="form-control" id="diagnosa"><?php echo $this->input->post('diagnosa') ?></textarea>
					
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