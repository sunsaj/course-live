


<h2> <?php echo $title ?></h2>
	
</h2>

<div id="main-body">
<?php foreach($notices as $notice) : ?>
	
<div id="notice-content">
	<h4><?php echo $notice['title']; ?></h4>
	
		
		<small class="notice-date">Posted on: <?php echo $notice['created_at']; ?> </small><br>
		<?php echo word_limiter($notice['body'], 50); ?>

		<a href="<?php echo base_url('/notices/view/'.$notice['slug']); ?>">Read More</a>

		<br><br>
		
</div>
		<br><br>		
<?php endforeach; ?>

</div>