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

<?php $aboutMe = get_post( 8 );?>

  <h2 class="mt-0 text-center"><?php echo get_the_title( $aboutMe ); ?></h2>
<div class="media">
  <?php echo get_the_post_thumbnail($aboutMe, '', array('class' => 'd-flex mr-3')); ?>
  <div class="media-body mb-5">
    <?php echo $aboutMe->post_content; ?>
  </div>
</div>
<div class="container contact-form" id="contact">
    <h2 class="text-center">Get in touch</h2>
    <?php echo do_shortcode( '[contact-form-7 id="57" title="Contact form"]' ); ?>
</div>
</div>
<?php
get_template_part('template-parts/footer-copywright'); 
wp_footer(); 
?></body>
</html>