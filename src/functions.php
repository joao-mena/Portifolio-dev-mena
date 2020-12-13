<?php 

  // Clean up Wordpress markup from unnecessary bloat
  require_once( get_template_directory() . '/includes/markup_cleanup.php' );

  // Set up all theme features
  require_once( get_template_directory() . '/includes/theme_setup.php' );

  // Enqueue styles and scripts
  require_once( get_template_directory() . '/includes/enqueue.php' );

  // Ajax  
  require_once( get_template_directory() . '/includes/ajax.php' );
  
  //Custom Post Types
  require_once( get_template_directory() . '/includes/cpt/profissionais.php');
  require_once( get_template_directory() . '/includes/cpt/eventos.php');
  require_once( get_template_directory() . '/includes/cpt/especialidades.php');

  // ACF's
  require_once( get_template_directory() . '/includes/acf.php' );
  require_once( get_template_directory() . '/includes/options/favicon.php' );
  require_once( get_template_directory() . '/includes/options/header.php' );
  require_once( get_template_directory() . '/includes/options/page-options.php' );
  require_once( get_template_directory() . '/includes/options/redes-sociais.php' );
  
?>