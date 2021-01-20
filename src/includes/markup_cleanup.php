<?php

  /* ***** ----------------------------------------------- ***** **
  ** ***** Cleanup
  ** ***** ----------------------------------------------- ***** */

  // Clean up Wordpress head
  function devmena_head_cleanup() {

    remove_action( 'wp_head', 'rsd_link' ); // EditURI link
    remove_action( 'wp_head', 'rest_output_link_wp_head', 10 ); // Remove REST API link
    remove_action( 'wp_head', 'feed_links_extra', 3 ); // Category feed links
    remove_action( 'wp_head', 'feed_links', 2 ); // Post and comment feed links
    remove_action( 'wp_head', 'wlwmanifest_link' ); // Windows Live Writer
    remove_action( 'wp_head', 'index_rel_link' ); // Index link
    remove_action( 'wp_head', 'parent_post_rel_link', 10, 0 ); // Previous link
    remove_action( 'wp_head', 'start_post_rel_link', 10, 0 ); // Start link
    remove_action( 'wp_head', 'rel_canonical', 10, 0 ); // Canonical
    remove_action( 'wp_head', 'wp_shortlink_wp_head', 10, 0 ); // Shortlink
    remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0 ); // Links for adjacent posts
    remove_action( 'wp_head', 'wp_generator' ); // WP version
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 ); // Emoji detection script
    remove_action( 'wp_print_styles', 'print_emoji_styles' ); // Emoji styles
    add_filter( 'emoji_svg_url', '__return_false' ); // Remove Emoji DNS prefetch

  }
  add_action( 'init', 'devmena_head_cleanup' );

  // Remove WP version from RSS
  function devmena_remove_rss_version() { 
    return '';
  }
  add_filter( 'the_generator', 'devmena_remove_rss_version' );

  // Remove 'text/css' from our enqueued stylesheet
  function devmena_style_remove( $tag ) {
    return preg_replace( '~\s+type=["\'][^"\']++["\']~', '', $tag );
  }
  add_filter( 'style_loader_tag', 'devmena_style_remove' );

  // Remove wp_head() injected Recent Comment styles
  function devmena_remove_recent_comments_style(){
    global $wp_widget_factory;

    remove_action( 'wp_head', array(
      $wp_widget_factory->widgets[ 'WP_Widget_Recent_Comments' ],
      'recent_comments_style'
    ));
  }
  add_action( 'widgets_init', 'devmena_remove_recent_comments_style' );


?>