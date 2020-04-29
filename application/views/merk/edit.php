<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Merk Barang</h3>
            </div>
			<?php echo form_open('merk/edit/'.$merk['id_merk']); ?>
			<div class="box-body">
				<div class="row clearfix">
					<div class="col-md-6">
						<label for="nm_merk" class="control-label">Merk</label>
						<div class="form-group">
							<input type="text" name="nm_merk" value="<?php echo ($this->input->post('nm_merk') ? $this->input->post('nm_merk') : $merk['nm_merk']); ?>" class="form-control" id="nm_merk" />
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