<?php
  get_header();

  get_template_part('template-parts/header-slider'); 
?>

<div class="container-fluid mt-5 mb-5" id="skills">

	<h2 class="text-center section-title">Skills</h2>

<div class="d-flex justify-content-center row">
	<?php 
		$skills = new WP_Query(array(
			'posts_per_page' => -1,
			'post_type' => 'skills',
		));

		while($skills->have_posts()) {
			$skills->the_post();?>
		
		<div class="col-md-3 card skills-card border-0">
		<div class="card-img-top"><?php the_post_thumbnail();?></div>
		<div class="card-body p-1">
		<h3 style="text-align: center;"><?php the_title(); ?></h3>
		<p><?php the_excerpt(); ?></p>
		</div>
		</div>


		<?php } wp_reset_postdata();
		?>

</div>
</div>
<div class="container-fluid mt-5 mb-5 pt-5 pb-5" id="portfolio">

	<h2 class="text-center section-title">Portfolio</h2>

<div class="d-flex justify-content-center row">

	<?php $portfolio = new WP_Query(array(
		'posts_per_page' => -1,
		'post_type' => 'portfolio',
		'orderby' => 'publish_date',
		'order' => 'DESC',
	));

		while ($portfolio->have_posts()) {
			$portfolio->the_post();?>

	<div class="col-md-3 card portfolio-card p-0 m-0 border-0 rounded-0">
		<?php echo get_the_post_thumbnail($post_id, 'imagePortfolio', array('class' => 'card-img')); ?>
			<div class="card-img-overlay hide pt-4">
			<h3><?php the_title(); ?></h3>
			<p><?php echo wp_trim_words(get_the_excerpt(), 25); ?></p>
			<p><a href="<?php echo get_the_permalink(); ?>" class="btn btn-primary btn-md">Find out more</a></p>
			</div>
	</div>
<?php } wp_reset_postdata();
?>

</div>
</div>
<div class="container mt-5 mb-5 pl-5 pr-5" id="about">
    <h2 class="text-center"><?php the_title(); ?></h2>
<div class="media">
  <?php echo get_the_post_thumbnail( '', '', array('class' => 'd-flex mr-3 mt-0')); ?>
  <div class="media-body mb-5">
    <p><?php the_content(); ?></p>
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
?>
</body>
</html>