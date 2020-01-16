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
  <div class="container mb-5">
      <p><?php the_content(); ?></p>

     


<?php
    //Get the images ids from the post_metadata
    $images = acf_photo_gallery('gallery_images', $post->ID);
    //Check if return array has anything in it
    if( count($images) ):
        //Cool, we got some data so now let's loop over it
        foreach($images as $image):
            $id = $image['id']; // The attachment id of the media
            $title = $image['title']; //The title
            $caption= $image['caption']; //The caption
            $full_image_url= $image['full_image_url']; //Full size image url
            $full_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
            $thumbnail_image_url= $image['thumbnail_image_url']; //Get the thumbnail size image url 150px by 150px
            $url= $image['url']; //Goto any link when clicked
            $target= $image['target']; //Open normal or new tab
?>


    <div id="carouselExampleControls" class="carousel slide mt-5" data-ride="carousel">
      
      <div class="carousel-inner">

        <div class="carousel-item <?php echo $image->count >= 1 ? '' : 'active'; ?>">
          <img src="<?php echo $full_image_url; ?>" class="" />
        </div>

      </div>
    </div>

    <?php endforeach; endif; ?>

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
</body>
</html>