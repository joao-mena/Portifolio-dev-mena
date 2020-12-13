<?php

	// Formulários
function envia_form_contato(){

    if ( 
        ! isset( $_POST['name_of_nonce_field'] ) 
        || ! wp_verify_nonce( $_POST['name_of_nonce_field'], 'custom_action_nonce') 
    ) {
 
        exit('Formulário não é válido...');
 
    }
    
    $response = array(
    	'error' => false,
    );
       $nome = $_POST['nome'];
       $email = $_POST['email'];
       $telefone = $_POST['telefone'];
       $mensagem = $_POST['mensagem'];
       
       /* Sends the form */
       $to = 'contato@scienzaanimali.com.br';
       $subject = 'Formulário de Contato Site';
       $message = '<p><strong>Dados do contato</strong></p>
                   <p>Nome: <strong>'.$nome.'</strong></p>
                   <p>E-mail: <strong>'.$email.'</strong></p>
                   <p>Telefone: <strong>'.$telefone.'</strong></p>
                   <p>Mensagem: <strong>'.$mensagem.'</strong></p>
                  ';
       $headers = 'Content-Type: text/html; charset=UTF-8'.
                                           'From: site@scienzaanimali.com.br' . "\r\n" .
                  'Reply-To: '. $email . "\r\n" .
                  'X-Mailer: PHP/' . phpversion();
       
       $send = wp_mail( $to, $subject, $message, $headers );
       
       die();
       
       }
       
       add_action( 'wp_ajax_envia_form_contato', 'envia_form_contato' );
       
       add_action("wp_ajax_nopriv_envia_form_contato", "envia_form_contato");


       function envia_form_cursos(){

    if ( 
        ! isset( $_POST['name_of_nonce_field'] ) 
        || ! wp_verify_nonce( $_POST['name_of_nonce_field'], 'custom_action_nonce') 
    ) {
 
        exit('Formulário não é válido...');
 
    }
    
    $response = array(
    	'error' => false,
    );
       $nome = $_POST['nome'];
       $email = $_POST['email'];
       $telefone = $_POST['telefone'];
       $curso = $_POST['curso'];
       $turma1 = $_POST['turma1'];
       $turma2 = $_POST['turma2'];
       
       /* Sends the form */
       $to = 'cursos@scienzaanimali.com.br';
       $subject = 'Formulário de Interesse Curso: '.$curso;
       $message = '<p><strong>Dados do contato</strong></p>
                   <p>Nome: <strong>'.$nome.'</strong></p>
                   <p>E-mail: <strong>'.$email.'</strong></p>
                   <p>Telefone: <strong>'.$telefone.'</strong></p>
                   <p>Interesse na(s) turma(s): <strong>'.$turma1.'</strong> <strong>'.$turma2.'</strong></p>
                  ';
       $headers = 'Content-Type: text/html; charset=UTF-8'.
                                           'From: site@scienzaanimali.com.br' . "\r\n" .
                  'Reply-To: '. $email . "\r\n" .
                  'X-Mailer: PHP/' . phpversion();
       
       $send = wp_mail( $to, $subject, $message, $headers );
       
       die();
       
       }
       
       add_action( 'wp_ajax_envia_form_cursos', 'envia_form_cursos' );
       
       add_action("wp_ajax_nopriv_envia_form_cursos", "envia_form_cursos");
