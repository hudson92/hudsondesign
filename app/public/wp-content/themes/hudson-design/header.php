<!DOCTYPE html>
<html <?php language_attributes(); ?> >
<head>
  <title><?php wp_title(); ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE-Edge">
  <!--Stylesheets & Scripts loaded in-->
  <?php wp_head(); ?>
</head>
<body class="h-100">

<?php get_template_part('template-parts/header-nav'); ?>

<header>
	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<?php echo get_theme_file_uri('/images/back1.png') ?>" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h3>First slide label</h3>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div>
    </div>
    <div class="carousel-item">
      <img src="<?php echo get_theme_file_uri('images/back2.png') ?>" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
          <h3>First slide label</h3>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div>
    </div>
    <div class="carousel-item">
      <img src="<?php echo get_theme_file_uri('images/back3.png') ?>" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
          <h3>First slide label</h3>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div> 
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</header>