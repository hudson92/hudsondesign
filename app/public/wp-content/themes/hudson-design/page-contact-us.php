<?php
  get_header();
  while(have_posts()) {
    the_post();?>


<header>
      <div class="jumbotron jumbotron-fluid mt-5">
        <div class="container">
          <h1 class="display-3"><?php the_title(); ?></h1>
        </div>
      </div>
</header>
<div class="container-fluid mt-1 mb-5">
    </div>    
    <div class="container mb-5">
      <p><?php the_content(); ?></p>
    </div>
	<?php } ?>
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
</div>
<?php
get_template_part('template-parts/footer-copywright'); 
wp_footer(); 
?></body>
</html>