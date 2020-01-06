<?php
  get_header();
?>
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
<div class="container-fluid mt-5 mb-5">
<?php 
  while(have_posts()) {
    the_post();?>
    <div class="container">
      <h2><?php the_title(); ?></h2>
      <p><?php the_content(); ?></p>
      <a class="btn btn-default btn-md" href="<?php the_permalink(); ?>">Read more</a>
    </div>
	<?php }
  echo paginate_links();
  ?>
</div>
<div class="container mt-5 mb-5 pl-5 pr-5" id="about">
<div class="media">
  <img class="d-flex mr-3" src="<?php echo get_theme_file_uri('images/LogoHDonly.png')?>" alt="Generic placeholder image">
  <div class="media-body mb-5">
    <h3 class="mt-0">About me</h3>
    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
  </div>
</div>
<div class="container contact-form" id="contact">
	<form class="mt-5">
  	<h2 class="text-center">Get in touch</h2>
  	<div class="form-group">
  		<label for="contactName">Name</label>
  		<input type="text" class="form-control" id="contactName" placeholder="Insert name here">
  	</div>
  	<div class="form-group">
  		<label for="contactEmail">Email</label>
  		<input type="text" class="form-control" id="contactEmail" placeholder="Insert email here">
  	</div>
  	<div class="form-group">
  		<label for="contactMessage">Message</label>
  		<input type="text" size="300" class="form-control" id="contactMessage" placeholder="Insert message here">
  	</div>
  	<div class="form-group">
  		<input type="submit" class="form-control" id="contactSubmit" value="Submit">
  	</div>
  </form>
</div>
</div>
<footer class="bg-dark d-flex justify-content-center mt-auto pt-3"><p>&copy; 2019 - Hudson Web Design</p></footer>
<?php wp_footer(); ?>
</body>
</html>