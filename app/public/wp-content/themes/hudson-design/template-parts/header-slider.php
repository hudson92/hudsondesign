<header>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
    <?php
      $sliderPost = new WP_Query(array(
        'posts_per_page' => -1,
        'post_type' => 'slider',
        'orderby' => 'publish_date',
        'order' => 'ASC',
      ));

      while ($sliderPost->have_posts()) {
        $sliderPost->the_post(); ?>


    <div class="carousel-item <?php echo $sliderPost->current_post >= 1 ? '' : 'active'; ?>">
      <?php echo get_the_post_thumbnail($post_id, 'headlineBanner', array('class' => 'd-block w-100 h-100')); ?>
        <div class="carousel-caption d-none d-md-block">
          <h2><?php the_title(); ?></h3>
          <?php the_excerpt(array('class' => 'white')); ?>
        </div>
    </div>
    <?php }
    ?>
  </div>

  <?php 
    if($sliderPost->post_count > 1) {
  ?>

  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

  <?php }
  else {

  }
  ?>
</div>
</header>

<?php wp_reset_postdata(); ?>

