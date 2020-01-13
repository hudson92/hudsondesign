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
    <div class="container content-feed">
      <h2><a class="content-feed-link" href="<?php get_the_permalink(); ?>"><?php the_title(); ?></a></h2>
      <p><?php if (has_excerpt()) {
        echo get_the_excerpt();
      } else {
        echo wp_trim_words(get_the_content(), 25);
      }
      echo '<br><br>'
       ?>
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
  <?php echo get_the_post_thumbnail($aboutMe, '', array('class' => 'mobile-about-img')); ?>
<div class="media">
  <?php echo get_the_post_thumbnail($aboutMe, '', array('class' => 'mr-3 desktop-about-img')); ?>
  <div class="media-body mb-5">
    <?php echo $aboutMe->post_content; ?>
  </div>
</div>
</div>
<div class="container text-center contact-form" id="contact">
    <h2 class="text-center">Get in touch</h2>
    <?php echo do_shortcode( '[contact-form-7 id="57" title="Contact form"]' ); ?>
</div>

<?php
get_template_part('template-parts/footer-copywright'); 
wp_footer(); 
?></body>
</html>