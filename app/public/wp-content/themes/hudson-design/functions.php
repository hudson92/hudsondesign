<?php

function hudsondesign_files() {
	wp_enqueue_script('main-design-js', get_theme_file_uri() . '/js/scripts-bundled.js');
	wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);
	wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	wp_enqueue_style('boostrap-4-cdn', '//stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css');
	wp_enqueue_script('boostrap-4-cdn-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js');
	wp_enqueue_style('design_main_styles', get_stylesheet_uri(), NULL, microtime(),);
	wp_enqueue_style('hd-google-fonts', 'https://fonts.googleapis.com/css?family=Amiko:400,700&display=swap', false);
}


add_action('wp_enqueue_scripts', 'hudsondesign_files');

function hudsondesign_features() {
	register_nav_menu('headerLocationOne', 'Header Location One');
	register_nav_menu('footerLocationOne', 'Footer Location One');
	add_theme_support('title-tag');
	add_image_size('skillThumb' , 250, 200, true);
	add_theme_support('post-thumbnails');
}

add_action('after_setup_theme', 'hudsondesign_features');