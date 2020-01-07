<?php

function hd_post_types() {
	//Skills post type
	register_post_type('skills', array(
		'supports' => array('title', 'excerpt', 'thumbnail'),
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
}


add_action('init', 'hd_post_types');