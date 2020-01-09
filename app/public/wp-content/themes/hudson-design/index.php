<?php
  get_header();
?>
<header>
  Insert header here
</header>
<div class="container-fluid mt-5 pt-5 ml-5 mr-5 mb-5">
<?php 
  while(have_posts()) {
    the_post();?>
    <div class="container">
      <h2><?php the_title(); ?></h2>
      <p><?php the_content(); ?></p>
      <a class="btn btn-primary btn-md" href="<?php the_permalink(); ?>">Read more</a>
    </div>
	<?php } 
  echo paginate_links();
  wp_reset_postdata();
  ?>
</div>
<hr>
<div class="container mt-5 mb-5 pl-5 pr-5" id="about">

  <h2 class="mt-0 text-center"><?php echo get_the_title( 8 ); ?></h2>
<div class="media">
  <img class="d-flex mr-3" src="<?php echo get_theme_file_uri('images/LogoHDonly.png')?>" alt="Generic placeholder image">
  <div class="media-body mb-5">
    <?php echo get_the_content($post = 8); ?>
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
<?php
get_template_part('template-parts/footer-copywright'); 
wp_footer(); 
?></body>
</html>