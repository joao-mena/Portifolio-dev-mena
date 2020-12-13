<?php

  /* ***** ----------------------------------------------- ***** **
  ** ***** Enqueue styles and scripts
  ** ***** ----------------------------------------------- ***** */

  // Enqueue theme stylesheet
  function codeduck_enqueue_styles() {
    $theme_version = wp_get_theme()->get( 'Version' );

	wp_enqueue_style( 'codeduck-style', get_stylesheet_uri(), array(), $theme_version );
	wp_style_add_data( 'codeduck-style', 'rtl', 'replace' );

	// Libs CSS.
    wp_enqueue_style( 'codeduck-print-style', get_template_directory_uri() . '/css/libs.min.css', null, $theme_version, 'all' );
  }
  add_action( 'wp_enqueue_scripts', 'codeduck_enqueue_styles' );

  // Enqueue theme scripts
  function codeduck_enqueue_scripts() {

    // Scripts libs    
    wp_enqueue_script( 'codeduck-script-libs', get_template_directory_uri() . '/js/libs/libs.min.js', array(), false, true );
    
    // Scripts theme
    wp_enqueue_script( 'codeduck-script', get_template_directory_uri() . '/js/scripts.min.js', array(), false, true );
  
}
  add_action( 'wp_enqueue_scripts', 'codeduck_enqueue_scripts' );

?>
