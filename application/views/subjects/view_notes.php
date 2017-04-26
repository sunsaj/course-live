
<h2>
	
</h2>

<div id="main-body">
<?php foreach($notes as $note) : ?>
	
<div id="notice-content">
	<h4><?php echo $note['title']; ?></h4>
	
		
		<small class="notice-date">Posted in:UNIT <?php echo $note['unit']; ?> </small><br>
		<?php echo word_limiter($note['body'], 50); ?>

		<a href="#">Read More</a>

		<br><br>
		
</div>
		<br><br>		
<?php endforeach; ?>

</div>