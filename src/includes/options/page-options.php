<?php
	/*
	*  Registrando paginas em opções do tema'
	*/

	if( function_exists('acf_add_options_page') ) {
		acf_add_options_page(array(
			'page_title'  => 'Conteúdo padrão',
			'menu_title'	=> 'Conteúdo padrão',
			'menu_slug' 	=> 'conteudos-do-tema',
			'capability'	=> 'edit_theme_options',
			'position'		=> 3,
		));
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Header e Footer',
			'menu_title'	=> 'Header e Footer',
			'parent_slug'	=> 'conteudos-do-tema',
		));
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Informações de Contato',
			'menu_title'	=> 'Informações de Contato',
			'parent_slug'	=> 'conteudos-do-tema',
		));
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Estrutura',
			'menu_title'	=> 'Estrutura',
			'parent_slug'	=> 'conteudos-do-tema',
		));
		acf_add_options_sub_page(array(
			'page_title' 	=> 'Mapa de acesso',
			'menu_title'	=> 'Mapa de acesso',
			'parent_slug'	=> 'conteudos-do-tema',
		));
	}
?>