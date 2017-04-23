<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Course Live | Sign up</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/style-responsive.css" rel="stylesheet">

     <link href="<?php echo base_url(); ?>assets/css/mystyle.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
	

	<div class="form-login">

	
	<?php echo form_open('users/register'); ?>
		        <h2 class="form-login-heading">sign up</h2>
		        <div id ="validate"><?php echo validation_errors(); ?></div>
		        <div class="login-wrap">
		            <input type="text" class="form-control" name= "fname" placeholder="First Name" autofocus>
		            <br>

		            <input type="text" class="form-control" name= "lname" placeholder="Lastname" autofocus>
		            <br>

		            <input type="email" class="form-control" name= "email" placeholder="Email" autofocus>
		            <br>
		            <input type="text" class="form-control" name= "username" placeholder="Username" autofocus>
		            <br>

		           <input type="password" class="form-control" name= "password" placeholder="Password">
		            <label class="checkbox">
		                <span class="pull-right"></span>
		            </label>
		            <input type="password" class="form-control" name= "password2" placeholder="Confirm Password">
		            <label class="checkbox">
		                <span class="pull-right"> </span>
		            </label>
		            <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> Register</button>
		          
		       		
		        </div>
		
		  
		
		      </form>	
		      </div>  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("<?php echo base_url(); ?>assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>
