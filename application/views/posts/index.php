<h2 ><?= $title ?></h2>


<div id="forum">
<?php foreach($posts as $post) : ?>
	<h3><?php echo $post['title']; ?></h3>
	<div class="row" >
		<div class="col-md-3">
			<img class="post-thumb" src="<?php echo site_url(); ?>uploads/posts/<?php echo $post['post_image']; ?>">
		</div>
		<div class="col-md-9">
			<small class="post-date">Asked on: <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong></small><br>
		<?php echo word_limiter($post['body'], 60); ?>
		<br><br>
		<p><a class="btn btn-default" href="<?php echo site_url('/posts/'.$post['slug']); ?>">View Answers</a></p>
		</div>
	</div>
	<hr>
<?php endforeach; ?>
</div>