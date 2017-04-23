<div id="main-body" class="notice">

<h3  class="text-center" id="page-title">
 <?php echo $title ?>
	
</h3>

<small class="notice-date">Posted on: <?php echo $notice['created_at']; ?></small><br>

<div class="notice-content">
	<?php echo $notice['body']; ?>

<?php if(!empty($files)): ?>
	<ul class="download">


		<?php $i= 0; ?>
            <?php foreach($files as $file): ?>
            <li class="item"><?php $i++; ?>
                <a href="<?php echo base_url('uploads/files/'.$file['f_name']); ?>" alt="" >
                <p><?php echo $i.". ".$file['f_name']; ?> <i class="fa fa-download"></i></p></a>
            </li>
            <?php endforeach; ?>
     </ul>
<?php endif; ?>


</div>

<br>
	<a id="edit-btn" class="btn btn-default pull-right " href="<?php echo base_url(); ?>notices/edit/<?php echo $notice['slug']; ?>">Edit</a>
	<?php echo form_open('/notices/delete/'.$notice['n_id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger pull-right " id="delete-btn">
	</form>
</div>