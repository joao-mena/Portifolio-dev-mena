<!DOCTYPE html>
<html <?php language_attributes();?>>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="theme-color" content="#184D20">

  <title><?php wp_title( '::', true, 'right' ); ?> <?php bloginfo('name'); ?></title>

  <link rel="icon" sizes="192x192" href="<?php the_field('favicon_png', 'options'); ?>">
  <?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
  <?php 
	get_template_part('/template-parts/header'); 
?>