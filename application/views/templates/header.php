<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Home">
    <meta name="keyword" content="Home, Course Live, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Course Live</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/style-responsive.css" rel="stylesheet">


    <link href="<?php echo base_url(); ?>assets/css/mystyle.css" rel="stylesheet">

    <script src="<?php echo base_url(); ?>assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a  href="<?php echo base_url(); ?>pages" class="logo"><img src="<?php echo base_url(); ?>assets/img/logo.jpg"></img>
            <!--logo end-->
         
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="<?php echo base_url(); ?>users/logout">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="<?php echo base_url(); ?>posts"><img src="<?php echo base_url(); ?>assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                  

              	  <h5 class="centered"><?php echo $this->session->userdata['username'] ?></h5>
              	  	
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-home"></i>
                          <span>Home</span>
                      </a>
                      <ul class="sub">

                          <li><a  href="<?php echo base_url(); ?>posts">View all Questions</a></li>
                          <li><a  href="<?php echo base_url(); ?>posts/create">Ask a Question</a></li>
                          <li><a  href="<?php echo base_url(); ?>categories/create">Create Cateogory</a></li>
                          
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-archive"></i>
                          <span>Notices</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<?php echo base_url(); ?>notices">View</a></li>
                          <li><a  href="<?php echo base_url(); ?>notices/create">Create</a></li>
                          
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-file-pdf-o"></i>
                          <span>Study Material</span>
                      </a>
                      <ul class="sub">
                         
                          <li><a  href="<?php echo base_url(); ?>subjects/syllabus">Syllabus</a></li>
                          <li><a  href="<?php echo base_url(); ?>subjects/notes">Notes</a></li>
                          
                      </ul>
                  </li>


                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-pencil-square-o"></i>
                          <span>Assignments</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">View</a></li>
                         
                          <li><a  href="form_component.html">Create</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Pages</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<?php echo base_url(); ?>pages/about">About</a></li>
                          <li><a  href="<?php echo base_url(); ?>pages/contact">Contact us</a></li>
                          
                      </ul>
                  
                  

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9 main-chart">
                  
                  	<div class="row mtbox">
                  		 <div class="col-md-12 col-sm-8 ">