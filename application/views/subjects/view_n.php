 
          	<h3><?= $title; ?></h3>

          	
          	<!-- SIMPLE TO DO LIST -->
          	<div class="row mt">
          		<div class="col-md-12">
          			<div class="white-panel ">
	                	<div class="panel-heading">
	                        <div class="pull-left"><h5> Choose Subjects </h5></div>
	                        <br>
	                 	</div>
	                 <?php echo form_open('subjects/getnotes'); ?>
				  		<div class="custom-check goleft mt">
				             <table id="todo" class="table table-hover custom-check">
				              <tbody>
				                <select class="form-control" name="sub_id" >
				                <?php foreach($subjects as $subject): ?>
								   <option value="<?php echo $subject['sub_id']; ?>"><?php echo $subject['name']; ?> </option>
								   
								  <?php endforeach; ?>
								</select>
								<br>
								
				              </tbody>

				          </table>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						</form>
						
					</div>
          		</div>
          	</div>
		

          	