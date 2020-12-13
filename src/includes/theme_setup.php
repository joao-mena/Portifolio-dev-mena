<?php

//adicionando svg no upload de imagens

function cc_mime_types($mimes) {
	$mimes['svg'] = 'image/svg+xml';
	return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');

//Thumbs
add_theme_support( 'post-thumbnails' );

if (function_exists('add_image_size')) :

  // Thumbs
  add_image_size( 'fullhd', 1920 );
  add_image_size( 'desktop', 1366 );
  add_image_size( 'mobile', 500 );

endif;

//Source set images
function awesome_acf_responsive_image($image_id,$image_size,$max_width){

	// check the image ID is not blank
	if($image_id != '') {

		// set the default src image size
		$image_src = wp_get_attachment_image_url( $image_id, $image_size );

		// set the srcset with various image sizes
		$image_srcset = wp_get_attachment_image_srcset( $image_id, $image_size );

		// generate the markup for the responsive image
		echo 'loading="lazy" src="'.$image_src.'" srcset="'.$image_srcset.'" sizes="(max-width: '.$max_width.') 100vw, '.$max_width.'"';

	}
}

//Menu
register_nav_menu( 'principal', __( 'Menu Principal', '' ));

show_admin_bar(false);

function my_acf_init() {
	
	acf_update_setting('google_api_key', 'AIzaSyCX8axwf0bfgoktHmTOQY9fhqJpGq0P2Wo');
}

add_action('acf/init', 'my_acf_init');

wp_enqueue_script('google-maps-js', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCX8axwf0bfgoktHmTOQY9fhqJpGq0P2Wo', array(), '1.0', true);