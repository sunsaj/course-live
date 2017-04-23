<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
  <div class="form-group">
    <label>Question</label>
    <input type="text" class="form-control" name="title" placeholder="Place your Question here in minimal words">
  </div>
  <div class="form-group">
    <label>Description</label>
    <textarea class="form-control ckeditor" name="body" placeholder="Add Description to your question"></textarea>
  </div>
  <div class="form-group">
	  <label>Category</label>
	  <select name="category_id" class="form-control">
		  <?php foreach($categories as $category): ?>
		  	<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
		  <?php endforeach; ?>
	  </select>
  </div>
  <div class="form-group">
	  <label>Upload Image Regarding Question</label>
	  <input type="file" name="userfile" size="20">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>