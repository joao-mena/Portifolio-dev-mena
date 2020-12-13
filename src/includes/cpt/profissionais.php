<?php
add_action( 'init', 'profissionais_type' );
function profissionais_type() {
	register_post_type( 'profissionais',
		array(
			'labels' => array(
				'name' 				=> 'Profissionais',
				'singular_name' 	=> 'Profissional',
				'menu_name'         => 'Profissionais',
				'all_items'         => 'Todos os Profissional',
				'view_item'         => 'Ver Profissional',
				'add_new_item'      => 'Adicionar novo Profissional',
				'add_new'           => 'Adicionar Profissional',
				'edit_item'         => 'Alterar Profissional',
				'update_item'       => 'Atualizar Profissional',
				'search_items'      => 'Pesquisar Profissional',
				'not_found'         => 'Nenhum Profissional Encontrado',
				'not_found_in_trash'=> 'Nenhum Profissional Encontrado na Lixeira',
			),
		'hierarchical' 		  => true,
		'has_archive' 		  => true,
		'public' 			  => true,
		'exclude_from_search' => false,
		'capability_type'     => 'post',
		'menu_icon' 		  => 'dashicons-nametag',
    'menu_position' => 5,
		'supports'            => array( 'title', 'page-attributes'),
		'rewrite'             => array( 'slug' => 'profissionais'),
    )
	);

	  /**
			 * Profissao
    **/     
    register_taxonomy( 'profissao', array( 'profissionais' ), array(
			'hierarchical' => true,
			'label' => __( 'Profissao' ),
			'labels' => array( // Labels customizadas
			'name' => _x( 'Profissao', 'taxonomy general name' ),
			'singular_name' => _x( 'Profissao', 'taxonomy singular name' ),
			'search_items' =>  __( 'Pesquisar Profissao' ),
			'all_items' => __( 'Todas Profissaos' ),
			'parent_item' => __( 'Categoria Profissoes' ),
			'parent_item_colon' => __( 'Categoria Profissao:' ),
			'edit_item' => __( 'Editar Profissao' ),
			'update_item' => __( 'Atualizar Profissao' ),
			'add_new_item' => __( 'Adicionar Profissao' ),
			'new_item_name' => __( 'Nome Nova Profissao' ),
			'menu_name' => __( 'Profissoes' ),
			),
			'show_ui' => true,
			'show_in_tag_cloud' => true,
			'query_var' => true,
			'rewrite' => array(
				'slug' => 'profissao',
				'with_front' => true
			),
		)
	);

    flush_rewrite_rules();
}
?>