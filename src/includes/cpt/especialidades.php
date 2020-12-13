<?php
add_action( 'init', 'especialidades_type' );
function especialidades_type() {
	register_post_type( 'especialidades',
		array(
			'labels' => array(
				'name' 				=> 'Especialidades',
				'singular_name' 	=> 'Especialidade',
				'menu_name'         => 'Especialidades',
				'all_items'         => 'Todos os Especialidade',
				'view_item'         => 'Ver Especialidade',
				'add_new_item'      => 'Adicionar novo Especialidade',
				'add_new'           => 'Adicionar Especialidade',
				'edit_item'         => 'Alterar Especialidade',
				'update_item'       => 'Atualizar Especialidade',
				'search_items'      => 'Pesquisar Especialidade',
				'not_found'         => 'Nenhum Especialidade Encontrado',
				'not_found_in_trash'=> 'Nenhum Especialidade Encontrado na Lixeira',
			),
		'hierarchical' 		  => true,
		'has_archive' 		  => true,
		'public' 			  => true,
		'exclude_from_search' => false,
		'capability_type'     => 'post',
		'menu_icon' 		  => 'dashicons-nametag',
    'menu_position' => 5,
		'supports'            => array( 'title', 'page-attributes'),
		'rewrite'             => array( 'slug' => 'especialidades'),
    )
  );

	    /**
         * faixa etaria
    **/     
	register_taxonomy( 'faixa-etaria', array( 'especialidades' ), array(
		'hierarchical' => true,
		'label' => __( 'Faixa Etária' ),
		'labels' => array( // Labels customizadas
		'name' => _x( 'Faixa Etária', 'taxonomy general name' ),
		'singular_name' => _x( 'faixa-etaria', 'taxonomy singular name' ),
		'search_items' =>  __( 'Pesquisar Faixa Etária' ),
		'all_items' => __( 'Todas Faixa Etárias' ),
		'parent_item' => __( 'Categoria Faixa Etária' ),
		'parent_item_colon' => __( 'Categoria Faixa Etária:' ),
		'edit_item' => __( 'Editar Faixa Etária' ),
		'update_item' => __( 'Atualizar Faixa Etária' ),
		'add_new_item' => __( 'Adicionar Faixa Etária' ),
		'new_item_name' => __( 'Nome Nova Faixa Etária' ),
		'menu_name' => __( 'Faixa Etária' ),
		),
		'show_ui' => true,
		'show_in_tag_cloud' => true,
		'query_var' => true,
		'rewrite' => array(
			'slug' => 'faixa-etaria',
			'with_front' => true
		),
	));


    flush_rewrite_rules();
}
?>