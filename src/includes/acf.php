<?php

	if( function_exists('acf_add_local_field_group') ):

	#Region "Page Home"

		#Region "Banner"
			acf_add_local_field_group(array(
				'key' => 'group_5f42a8f700820',
				'title' => 'Banner Home',
				'fields' => array(
					array(
						'key' => 'field_5f42a8ffdd04c',
						'label' => 'Banner',
						'name' => 'banners',
						'type' => 'repeater',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'collapsed' => '',
						'min' => 0,
						'max' => 0,
						'layout' => 'block',
						'button_label' => 'Adicionar Banner',
						'sub_fields' => array(
							array(
								'key' => 'field_5f42a915dd04d',
								'label' => 'Imagens',
								'name' => 'imagens',
								'type' => 'group',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'layout' => 'row',
								'sub_fields' => array(
									array(
										'key' => 'field_5f42a946dd04f',
										'label' => 'Desktop',
										'name' => 'desktop',
										'type' => 'image',
										'instructions' => '',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'return_format' => 'id',
										'preview_size' => 'medium',
										'library' => 'all',
										'min_width' => '',
										'min_height' => '',
										'min_size' => '',
										'max_width' => '',
										'max_height' => '',
										'max_size' => '',
										'mime_types' => '',
									),
									array(
										'key' => 'field_5f42a946dd04fqqwe',
										'label' => 'Mobile',
										'name' => 'mobile',
										'type' => 'image',
										'instructions' => '',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'return_format' => 'id',
										'preview_size' => 'medium',
										'library' => 'all',
										'min_width' => '',
										'min_height' => '',
										'min_size' => '',
										'max_width' => '',
										'max_height' => '',
										'max_size' => '',
										'mime_types' => '',
									),
								),
							),
							array(
								'key' => 'field_5f42a991dd053',
								'label' => 'Conteudo Banner',
								'name' => 'conteudoBanner',
								'type' => 'group',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'layout' => 'row',
								'sub_fields' => array(
									array(
										'key' => 'field_5f42a9addd05qwe5',
										'label' => 'Titulo',
										'name' => 'titulo_banner',
										'type' => 'text',
										'instructions' => '',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'post_type' => array(
											0 => 'page',
										),
										'taxonomy' => '',
										'allow_null' => 0,
										'allow_archives' => 0,
										'multiple' => 0,
									),
									array(
										'key' => 'field_5f4er2a9addd055',
										'label' => 'Texto',
										'name' => 'texto_banner',
										'type' => 'text',
										'instructions' => 'utilize < br > para pular linha',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'post_type' => array(
											0 => 'page',
										),
										'taxonomy' => '',
										'allow_null' => 0,
										'allow_archives' => 0,
										'multiple' => 0,
									),
									array(
										'key' => 'field_5f4er2a9adasdd055',
										'label' => 'Texto Botao Banner',
										'name' => 'texto_botao_banner',
										'type' => 'text',
										'instructions' => '',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'post_type' => array(
											0 => 'page',
										),
										'taxonomy' => '',
										'allow_null' => 0,
										'allow_archives' => 0,
										'multiple' => 0,
									),
									array(
										'key' => 'field_5f42a9addd055',
										'label' => 'Link',
										'name' => 'link_banner',
										'type' => 'page_link',
										'instructions' => '',
										'required' => 0,
										'conditional_logic' => 0,
										'wrapper' => array(
											'width' => '',
											'class' => '',
											'id' => '',
										),
										'post_type' => array(
											0 => 'page',
										),
										'taxonomy' => '',
										'allow_null' => 0,
										'allow_archives' => 0,
										'multiple' => 0,
									),
								),
							),
						),
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'page_template',
							'operator' => '==',
							'value' => 'template-home.php',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region

		#Region "Bem-vindo ao Entre Irmãos"
			acf_add_local_field_group(array(
				'key' => 'group_5f9f3685d13cc',
				'title' => 'Bem-vindo ao Entre Irmãos',
				'fields' => array(
					array(
						'key' => 'field_5f9f36954cae3',
						'label' => 'Titulo',
						'name' => 'titulo_bv',
						'type' => 'text',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'placeholder' => '',
						'prepend' => '',
						'append' => '',
						'maxlength' => '',
					),
					array(
						'key' => 'field_5f9f38904cae4',
						'label' => 'Texto',
						'name' => 'texto_bv',
						'type' => 'wysiwyg',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'tabs' => 'all',
						'toolbar' => 'full',
						'media_upload' => 1,
						'delay' => 0,
					),
					array(
						'key' => 'field_5f9f38ba4cae5',
						'label' => 'Logo',
						'name' => 'logo_bv',
						'type' => 'image',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'library' => 'all',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
					array(
						'key' => 'field_5f9f38fb4cae6',
						'label' => 'Cards de conteudos',
						'name' => 'cards_de_conteudos',
						'type' => 'repeater',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'collapsed' => '',
						'min' => 0,
						'max' => 0,
						'layout' => 'block',
						'button_label' => '',
						'sub_fields' => array(
							array(
								'key' => 'field_5f9f39254cae7',
								'label' => 'imagem',
								'name' => 'imagem',
								'type' => 'image',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'return_format' => 'id',
								'preview_size' => 'medium',
								'library' => 'all',
								'min_width' => '',
								'min_height' => '',
								'min_size' => '',
								'max_width' => '',
								'max_height' => '',
								'max_size' => '',
								'mime_types' => '',
							),
							array(
								'key' => 'field_5f9f393b4cae8',
								'label' => 'titulo conteudo',
								'name' => 'titulo_conteudo',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
							array(
								'key' => 'field_5f9f39584cae9',
								'label' => 'Texto Conteúdo',
								'name' => 'texto_conteudo',
								'type' => 'textarea',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'maxlength' => '',
								'rows' => '',
								'new_lines' => '',
							),
							array(
								'key' => 'field_5f9f39774caea',
								'label' => 'Texto botão Conteúdo',
								'name' => 'texto_botao_conteudo',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
							array(
								'key' => 'field_5f9f39944caeb',
								'label' => 'Link Conteudo',
								'name' => 'link_conteudo',
								'type' => 'page_link',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'post_type' => '',
								'taxonomy' => '',
								'allow_null' => 0,
								'allow_archives' => 1,
								'multiple' => 0,
							),
						),
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'page_template',
							'operator' => '==',
							'value' => 'template-home.php',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region

	#End Region

	#Region "Page Quem Somos"
		
		#Region "Informações Quem Somos"
		#End Region

	#End Region

	#Region "Page Profissionais"

		#Region "Page infos clientes"
		#End Region

	#End Region

	#Region "Page Eventos"

		#Region "Linha de Produtos"
		#End Region 

	#End Region 

	#Region "Page Blog"
		
		#Region "Lista de Serviços"
		#End Region

	#End Region 

	#Region "Conteudo Padrao"

		#Region "Header Page"
			acf_add_local_field_group(array(
				'key' => 'group_5f5e0f25b63af',
				'title' => 'header page',
				'fields' => array(
					// array(
					// 	'key' => 'field_5f5e0f3319494',
					// 	'label' => 'titulo',
					// 	'name' => 'titulo',
					// 	'type' => 'text',
					// 	'instructions' => '',
					// 	'required' => 0,
					// 	'conditional_logic' => 0,
					// 	'wrapper' => array(
					// 		'width' => '',
					// 		'class' => '',
					// 		'id' => '',
					// 	),
					// 	'default_value' => '',
					// 	'placeholder' => '',
					// 	'prepend' => '',
					// 	'append' => '',
					// 	'maxlength' => '',
					// ),
					array(
						'key' => 'field_5f5e0f4119495',
						'label' => 'imagens',
						'name' => 'imagens_page',
						'type' => 'group',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'layout' => 'block',
						'sub_fields' => array(
							array(
								'key' => 'field_5f5e0f6119496',
								'label' => 'imagem desk',
								'name' => 'imagem_desk',
								'type' => 'image',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'return_format' => 'id',
								'preview_size' => 'medium',
								'library' => 'all',
								'min_width' => '',
								'min_height' => '',
								'min_size' => '',
								'max_width' => '',
								'max_height' => '',
								'max_size' => '',
								'mime_types' => '',
							),
							array(
								'key' => 'field_5f5e0f7a19497',
								'label' => 'imagem mobile',
								'name' => 'imagem_mobile',
								'type' => 'image',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'return_format' => 'id',
								'preview_size' => 'medium',
								'library' => 'all',
								'min_width' => '',
								'min_height' => '',
								'min_size' => '',
								'max_width' => '',
								'max_height' => '',
								'max_size' => '',
								'mime_types' => '',
							),
						),
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-header-e-footer',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region

		#Region "Imagens Estrutura"
			acf_add_local_field_group(array(
				'key' => 'group_5f26252bd1e79',
				'title' => 'Imagens Estrutura',
				'fields' => array(
					array(
						'key' => 'field_5f26255d59171',
						'label' => 'Imagens',
						'name' => 'imagens',
						'type' => 'gallery',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'insert' => 'append',
						'library' => 'all',
						'min' => '',
						'max' => '',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-estrutura',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 
		
		#Region "Informações de Contato"
			acf_add_local_field_group(array(
				'key' => 'group_5f2622355da37',
				'title' => 'Informações de Contato',
				'fields' => array(
					array(
						'key' => 'field_5f2622e6405fc',
						'label' => 'Contatos',
						'name' => 'contatos',
						'type' => 'group',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'layout' => 'block',
						'sub_fields' => array(
							array(
								'key' => 'field_5f2622f1405fd',
								'label' => 'Telefone',
								'name' => 'telefone',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
							array(
								'key' => 'field_5f2622f8405fe',
								'label' => 'Whatsapp',
								'name' => 'whatsapp',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
							array(
								'key' => 'field_5f2f49248e865',
								'label' => 'Mensagem Whatsapp',
								'name' => 'mensagem_whatsapp',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
							array(
								'key' => 'field_5f262302405ff',
								'label' => 'E-mail',
								'name' => 'email',
								'type' => 'text',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'placeholder' => '',
								'prepend' => '',
								'append' => '',
								'maxlength' => '',
							),
						),
					),
					array(
						'key' => 'field_5f26235c40602',
						'label' => 'Endereço',
						'name' => 'endereco',
						'type' => 'textarea',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'placeholder' => '',
						'maxlength' => '',
						'rows' => 5,
						'new_lines' => 'br',
					),
					array(
						'key' => 'field_5f5e0f61qwe19496',
						'label' => 'Icone Contato',
						'name' => 'icone__contato',
						'type' => 'image',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'library' => 'all',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
					array(
						'key' => 'field_5asf5e0f61qwe19496',
						'label' => 'Icone Endereço',
						'name' => 'icone__endereco',
						'type' => 'image',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'library' => 'all',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-informacoes-de-contato',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 

		#Region "Informações Header"
			acf_add_local_field_group(array(
				'key' => 'group_5f2624199df95',
				'title' => 'Informações Header',
				'fields' => array(
					array(
						'key' => 'field_5f26243ae91e5',
						'label' => 'Logo',
						'name' => 'logo',
						'type' => 'image',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'library' => 'all',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
					array(
						'key' => 'field_5f26243ae91qwee5',
						'label' => 'Background Header Mobile',
						'name' => 'bg_header_mobile',
						'type' => 'image',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'return_format' => 'id',
						'preview_size' => 'medium',
						'library' => 'all',
						'min_width' => '',
						'min_height' => '',
						'min_size' => '',
						'max_width' => '',
						'max_height' => '',
						'max_size' => '',
						'mime_types' => '',
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-header-e-footer',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 
		
		#Region "Mapa"
			acf_add_local_field_group(array(
				'key' => 'group_5f2625b021996',
				'title' => 'Mapa',
				'fields' => array(
					array(
						'key' => 'field_5f2626049ebad',
						'label' => 'Título',
						'name' => 'titulo_mapa',
						'type' => 'text',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'placeholder' => '',
						'prepend' => '',
						'append' => '',
						'maxlength' => '',
					),
					array(
						'key' => 'field_5f2626109ebae',
						'label' => 'Frase',
						'name' => 'frase_mapa',
						'type' => 'text',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'placeholder' => '',
						'prepend' => '',
						'append' => '',
						'maxlength' => '',
					),
					array(
						'key' => 'field_5f31e5408fe0a',
						'label' => 'Mapa',
						'name' => 'mapa',
						'type' => 'google_map',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'center_lat' => '-23.587008',
						'center_lng' => '-46.586415',
						'zoom' => '',
						'height' => '',
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-mapa-de-acesso',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 

		#Region "Informações Footer"
			acf_add_local_field_group(array(
				'key' => 'group_5f62bd09f1070',
				'title' => 'Informações Footer',
				'fields' => array(
					array(
						'key' => 'field_5f62bd1ec5154',
						'label' => 'Conteudo',
						'name' => 'conteudo_footer',
						'type' => 'textarea',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'default_value' => '',
						'placeholder' => '',
						'maxlength' => '',
						'rows' => 4,
						'new_lines' => '',
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'options_page',
							'operator' => '==',
							'value' => 'acf-options-header-e-footer',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 

	#End Region 

	#Region "Como Funciona"

		#Region "Funcionamento"
			acf_add_local_field_group(array(
				'key' => 'group_5f73d0cd6bed5',
				'title' => 'Funcionamento',
				'fields' => array(
					array(
						'key' => 'field_5f73d2f2f6a71',
						'label' => 'topicos de funcionamento',
						'name' => 'topicos_de_funcionamento',
						'type' => 'repeater',
						'instructions' => '',
						'required' => 0,
						'conditional_logic' => 0,
						'wrapper' => array(
							'width' => '',
							'class' => '',
							'id' => '',
						),
						'collapsed' => '',
						'min' => 0,
						'max' => 0,
						'layout' => 'table',
						'button_label' => '',
						'sub_fields' => array(
							array(
								'key' => 'field_5f73d538f6a72',
								'label' => 'Texto Tópico',
								'name' => 'texto_topico',
								'type' => 'wysiwyg',
								'instructions' => '',
								'required' => 0,
								'conditional_logic' => 0,
								'wrapper' => array(
									'width' => '',
									'class' => '',
									'id' => '',
								),
								'default_value' => '',
								'tabs' => 'all',
								'toolbar' => 'full',
								'media_upload' => 1,
								'delay' => 0,
							),
						),
					),
				),
				'location' => array(
					array(
						array(
							'param' => 'page_template',
							'operator' => '==',
							'value' => 'template-funciona.php',
						),
					),
				),
				'menu_order' => 0,
				'position' => 'normal',
				'style' => 'default',
				'label_placement' => 'top',
				'instruction_placement' => 'label',
				'hide_on_screen' => '',
				'active' => true,
				'description' => '',
			));
		#End Region 

	#End Region 

	endif;
	
?>