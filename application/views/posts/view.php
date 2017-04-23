<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at']; ?></small><br>

<div id="forum">

<img class= "col-md-3 img-fluid" alt="Responsive image" src="<?php echo site_url(); ?>uploads/posts/<?php echo $post['post_image']; ?>">
<div class="post-body col-md-9">
	<?php echo $post['body']; ?>
</div>

<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
	<hr>
	<a id='edit-btn' class="btn btn-default pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
	<?php echo form_open('/posts/delete/'.$post['id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger">
	</form>
<?php endif; ?>
<hr>
<h3>Answers</h3>
<?php if($comments) : ?>
	<?php foreach($comments as $comment) : ?>
		<div class="well">
			<h5><?php echo $comment['body']; ?> </h5>
		</div>
	<?php endforeach; ?>
<?php else : ?>
	<p>No Answers To Display</p>
<?php endif; ?>
<hr>
<h3>Add Answer</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	
	<div class="form-group">
		<label>Answer</label>
		<textarea name="body" class="form-control ckeditor"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
	<button class="btn btn-primary" type="submit">Submit</button>
</form>
</div>
