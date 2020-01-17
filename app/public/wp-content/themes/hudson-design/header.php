<!DOCTYPE html>
<html <?php language_attributes(); ?> >
<head>
  <title><?php bloginfo('name'); wp_title(); ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE-Edge">
  <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.min.js"></script>
  <!--Stylesheets & Scripts loaded in-->
  <?php wp_head(); ?>
</head>
<body class="h-100">

<?php get_template_part('template-parts/header-nav'); ?>

