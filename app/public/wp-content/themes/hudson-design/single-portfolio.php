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
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="<?php echo site_url('/portfolio') ?>">Portfolio</a></li>
    <li class="breadcrumb-item active" aria-current="page"><?php echo the_title(); ?></li>
  </ol>
</nav>
<div class="container-fluid pt-3 mb-5">
  <div class="row d-flex justify-content-center">
    <div class="col-sm-10 col-md-6">
      <p><?php the_content(); ?></p>

     
  </div>
      <div class="col-sm-10 col-md-6">
  <?php
    //Get the images ids from the post_metadata
    $images = acf_photo_gallery('gallery_images', $post->ID);
    //Check if return array has anything in it
    if( count($images) ):
        //Cool, we got some data so now let's loop over it
        foreach($images as $image):
            $id = $image['id']; // The attachment id of the media
            $caption= $image['caption']; //The caption
            $full_image_url= $image['full_image_url']; //Full size image url
            $thumbnail_image_url= $image['thumbnail_image_url']; //Get the thumbnail size image url 150px by 150px
    ?>

      
        <div class="gallery-image_container text-center mb-2 d-inline">
          <a href="<?php echo $full_image_url ?>" target="_new">
          <img class="gallery-image" src="<?php echo $full_image_url; ?>" class="" />
        </a>
        </div>

   

    <?php endforeach; endif; ?>

  </div>
  <?php } wp_reset_postdata(); ?>

</div>
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
</body>
</html>