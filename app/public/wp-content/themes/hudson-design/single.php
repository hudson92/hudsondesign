<?php
  get_header();
  while(have_posts()) {
    the_post();?>


<header>
      <div class="jumbotron jumbotron-fluid mt-5">
        <div class="container">
          <h1 class="display-3"><?php the_title(); ?></h1>
          <p class="lead white"><?php echo wp_trim_words(get_the_excerpt(), 20); ?></p>
        </div>
      </div>
</header>
<div class="container-fluid mt-1 mb-5">
    </div>    
    <div class="container mb-5">
      <p><?php the_content(); ?></p>

      <?php

        $slideImages = get_field('slides');

        if ($slideImages) {
          echo '<ul>';
          foreach((array)$slideImages as $images) { ?>

            <?php echo wp_get_attachment_image($images); ?>

          <?php }
          echo '</ul>';
        }

      ?>
<!--
  <?php 
    $images = get_field('slides');
    $size = 'full';
    if( $images ): ?>

  <div id="carouselExampleControls" class="carousel slide mt-5" data-ride="carousel">
  
    <?php foreach((array) $images as $image_id): ?>

  <div class="carousel-inner">

  
    <div class="carousel-item active <?php echo $sliderPost->current_post >= 1 ? '' : 'active'; ?>">
      <?php echo wp_get_attachment_image( $image_id, $size, array('class' => 'd-block w-100')); ?>
    </div>
  <?php endforeach; ?>
<?php endif; ?>
</div>
</div>
!-->
</div>
	<?php } wp_reset_postdata(); ?>
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
?>  
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="slick/slick.min.js"></script>
 <script type="text/javascript">
    $(document).ready(function(){
      $('.slideshow').slick({
        setting-name: setting-value
      });
    });
  </script>
</body>
</html>