<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Course Live</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo site_url(); ?>assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<?php echo site_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="<?php echo site_url(); ?>assets/css/style.css" rel="stylesheet">
    <link href="<?php echo site_url(); ?>assets/css/style-responsive.css" rel="stylesheet">
    <link href="<?php echo site_url(); ?>assets/css/mystyle.css" rel="stylesheet">

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
            <a href="<?php echo site_url(); ?>pages/view" class="logo"><b>Course Live</b></a>
            <!--logo end-->
       
  
            <div class="top-menu">
              <ul class="nav pull-right top-menu">
                    <li><a class="logout fa fa-book" href="<?php echo site_url(); ?>pages/about"> About</a></li>
                    <li><a class="logout fa fa-phone" href="<?php echo site_url(); ?>pages/contact"> Contact</a></li>
                    <li><a class="logout fa fa-sign-out" href="<?php echo site_url(); ?>users/logout"> Logout</a></li>
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
              
                  <p class="centered"><a href="profile.html"><img src="<?php echo site_url(); ?>assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                  
                  <h5 class="centered">M S Rahul Saj</h5>
                    


                  <li class="sub-menu">
                      <a  href="<?php echo base_url(); ?>notices">
                          <i class="fa fa-home"></i>
                          <span>Notice</span>
                      </a>
                  


                  
                    <ul>
                    <li><a class="sub" href="<?php echo base_url(); ?>notices"> View</a></li>

                    <li><a class="sub" href="<?php echo site_url(); ?>notices/create"> Create</a></li>

                    </ul>
                  
             
                  <li class="mt">
                      <a  href="index.html">
                          <i class="fa fa-rss"></i>
                          <span>Forum</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-file-pdf-o"></i>
                          <span>Material</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a  href="index.html">
                          <i class="fa fa-file-word-o"></i>
                          <span>Assignment</span>
                      </a>
                  </li>

                  <li class="mt">
                      <a  href="index.html">
                          <i class="fa fa-user"></i>
                          <span>Profile</span>
                      </a>
                  </li>

      
                      </ul>
                  </li>
               
                 
                 

              </ul>
              <!-- sidebar menu end-->

                <!-- Flash messages -->
      <?php if($this->session->flashdata('user_registered')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_updated')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('category_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
      <?php endif; ?>

     
      <?php if($this->session->flashdata('user_loggedin')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
      <?php endif; ?>




              
          </div>
      </aside>
      <!--sidebar end-->






     <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!--div class="row mt"-->
              <div class="col-lg-12">
              
              


