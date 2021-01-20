<?php

  /* ***** ----------------------------------------------- ***** **
  ** ***** Enqueue styles and scripts
  ** ***** ----------------------------------------------- ***** */

  // Enqueue theme stylesheet
  function devmena_enqueue_styles() {
    $theme_version = wp_get_theme()->get( 'Version' );

	wp_enqueue_style( 'devmena-style', get_stylesheet_uri(), array(), $theme_version );
	wp_style_add_data( 'devmena-style', 'rtl', 'replace' );

	// Libs CSS.
    wp_enqueue_style( 'devmena-print-style', get_template_directory_uri() . '/css/libs.min.css', null, $theme_version, 'all' );
  }
  add_action( 'wp_enqueue_scripts', 'devmena_enqueue_styles' );

  // Enqueue theme scripts
  function devmena_enqueue_scripts() {

    // Scripts libs    
    wp_enqueue_script( 'devmena-script-libs', get_template_directory_uri() . '/js/libs/libs.min.js', array(), false, true );
    
    // Scripts theme
    wp_enqueue_script( 'devmena-script', get_template_directory_uri() . '/js/scripts.min.js', array(), false, true );
  
}
  add_action( 'wp_enqueue_scripts', 'devmena_enqueue_scripts' );

?>
