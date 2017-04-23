<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('notices/create'); ?>
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea  class="form-control ckeditor" name="body" placeholder="Add Body"></textarea>
  </div>
  
  <div class="form-group">
	  <label>Upload files</label>
	  <input type="file" name="userFiles[]" multiple/>
  </div>
  <button type="submit" class="btn btn-default" >Submit</button>
</form>