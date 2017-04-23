<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('notices/update'); ?>
	<input type="hidden" name="id" value="<?php echo $notice['n_id']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title" value="<?php echo $notice['title']; ?>">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea class="form-control ckeditor" name="body" placeholder="Add Body"><?php echo $notice['body']; ?></textarea>
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>