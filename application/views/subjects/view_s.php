 
          	<h3><?= $title; ?></h3>
          
          	
          	<!-- SIMPLE TO DO LIST -->
          	<div class="row mt">
          		<div class="col-md-12">
          			<div class="white-panel ">
	                	<div class="panel-heading">
	                        <div class="pull-left"><h5> Choose Subjects </h5></div>
	                        <br>
	                 	</div>
	              
				  		<div class="custom-check goleft mt">
				             <table id="todo" class="table table-hover custom-check">
				              <tbody>

				              <?php foreach($subjects as $subject): ?>
				                <tr>
				           			<td>
				                        
				                        <a ><?php echo $subject['name']; ?></a>
				                    </td>
				                        
									<td>
				                        
				                        <a> <?php echo $subject['code']; ?></a>
				                       
									</td>
									<td>
				                        
				                        <a href="<?php echo base_url(); ?>uploads/syllabus/<?php echo $subject['file']; ?>">Download</a>
				                       
									</td>
				                </tr>
				                <?php endforeach; ?>
				                
				              </tbody>
				          </table>
						</div>
						
						 <!-- /table-responsive -->
					</div> <!--/ White-panel -->
          		</div> <!--/col-md-12 -->
          	</div><!-- row -->
		