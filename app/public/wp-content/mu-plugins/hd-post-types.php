<?php

function hd_post_types() {
	//Skills post type
	register_post_type('skills', array(
		'supports' => array('title', 'excerpt', 'thumbnail',),
		'has_archive' => false,
		'public' => true,
		'labels' => array(
			'name' => 'Skills',
			'add_new_item' => 'Add New Skill',
			'all_items' => 'All Skills',
			'singular_name' => 'Skill',
		),
		'menu_icon' => 'dashicons-awards',
	));

	//Slider post type
	register_post_type('slider', array(
		'supports' => array ('title', 'excerpt', 'thumbnail'),
		'has_archive' => false,
		'public' => true,
		'labels' => array(
			'name' => 'Image slider',
			'add_new_item' => 'Add New Slide',
			'all_items' => 'Image Slides',
		),
		'menu_icon' => 'dashicons-images-alt',
	));

	//Portfolio post type
	register_post_type('portfolio', array(
		'supports' => array('title', 'excerpt', 'editor', 'thumbnail'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Portfolio',
			'add_new_item' => 'Add New Project',
			'edit_item' => 'Edit Project',
		),
		'menu_icon' => 'dashicons-portfolio',
	));
}


add_action('init', 'hd_post_types');