<?php get_header(); 

    /* Template Name: Contato */

    $contatos = get_field('contatos', 'options');
    $telefoneLink = str_replace('-', '', $telefone);
    $telefone = $contatos['telefone'];

    $email = $contatos['email'];

    $endereco = get_field('endereco', 'options');
    $mapa = get_field('mapa', 'option');

    $icone__contatourl = get_field('icone__contato', 'options');
    $icone__contato = wp_get_attachment_image_src($icone__contatourl, 'full'); 

    $icone__enderecourl = get_field('icone__endereco', 'options');
    $icone__endereco = wp_get_attachment_image_src($icone__enderecourl, 'full'); 

?>
<main class="main">
  <?php
        get_template_part('/template-parts/header-page'); 
    ?>
  <section class="contato">
    <div class="contato__cards">
      <article class="contacts">
        <img src="" data-svg="<?php echo $icone__contato[0]; ?>" class="svg">
        <h3 class="title__contato">Contato</h3>
        <p class="text__contact"><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></p>
        <p class="text__contact"><a href="tel:+55011<?php echo $telefoneLink; ?>">+55 11 <?php echo $telefone; ?></a></p>
      </article>
      <article class="endereco">
        <img src="" data-svg="<?php echo $icone__endereco[0]; ?>" class="svg">
        <h3 class="title__endereco">Endereço</h3>
        <address class="text__endereco">
          <?php echo $endereco; ?>
        </address>
      </article>
    </div>
    <div class="content content__fale-conosco">
      <div class="infos__fale-conosco">
        <form id="formContato" class="form" action="<?php echo site_url() ?>/wp-admin/admin-ajax.php?action=envia_form_contato">
          <div class="contact-form">
            <div class="contact-form__input">
              <input type="text" required="" name="nome">
              <label>Nome</label>
            </div>
            <div class="contact-form__input">
              <input type="text" required="" name="email">
              <label>E-mail</label>
            </div>
            <div class="contact-form__input no-margin">
              <input type="text" required="" id="assunto" name="assunto">
              <label>Assunto</label>
            </div>
            <div class="contact-form__area">
              <textarea type="textarea" name="mensagem" required=""></textarea>
              <label>Mensagem</label>
            </div>
            <div class="button">
              <?php wp_nonce_field( 'custom_action_nonce', 'name_of_nonce_field' ); ?>
              <button class="btn__enviar">Enviar</button>
            </div>
            <div id="mensagem" class="">Formulário Enviado com sucesso!</div>
          </div>
        </form>
      </div>
      <div class="infos infos--endereco">
        <div class="mapa">
          <div class="acf-map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14616.94197101231!2d-46.66189621910177!3d-23.66753501513318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5ab13fb3879d%3A0x83c2796e75e59b65!2sRua%20Margarida%20Zingg%2C%20245%20-%20Jabaquara%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2004385-080!5e0!3m2!1spt-BR!2sbr!4v1602120633014!5m2!1spt-BR!2sbr" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
<?php get_footer(); ?>