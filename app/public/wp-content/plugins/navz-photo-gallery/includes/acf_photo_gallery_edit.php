<?php

function acf_photo_gallery_edit($field, $nonce, $attachment, $url = '', $title, $caption, $target = 0, $acf_fieldkey){
	$args = array();
	$args['url'] = $url;
	$args['title'] = $title;
	$args['caption'] = $caption;
	$args['target'] = $target;
	$fields = apply_filters( 'acf_photo_gallery_image_fields', $args, $attachment, $field, $acf_fieldkey);
	include( dirname(__FILE__) . '/acf_photo_gallery_metabox_edit.php');
}
