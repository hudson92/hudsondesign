<nav class="navbar  navbar-dark fixed-top">
    <a class="navbar-brand" href="<?php echo site_url('/'); ?>"><img src="<?php echo get_theme_file_uri('/images/HDWtranspsmall.png') ?>" height="55px" /></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    

 <?php
          wp_nav_menu(array(
            'theme_location' => 'headerLocationOne',
            'container' => 'div',
            'container_class' => 'collapse navbar-collapse',
            'container_id' => 'navbarsExampleDefault',
            'menu_class' => 'navbar-nav ml-auto'
          ));


     
     ?>  
     <div id="navbarsExampleDefault" class="collapse navbar-collapse">
    <span class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span></div>
</nav>

