<h2><?= $title ;?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('categories/create'); ?>
	<div class="form-group">
	
		<input type="text" class="form-control" name="name" placeholder="Enter new category">
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>