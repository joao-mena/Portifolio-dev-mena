<?php get_header(); 

    /* Template Name: Eventos */
    $tipo = "archive-eventos";
    set_query_var('tipo', $tipo);  

?>
<main class="main">
  <?php
      get_template_part('/template-parts/header-page'); 
    ?>
  <section class="eventos-page">
    <h1 class="title__eventos">EVENTOS</h1>
    <div class="cards">
      <?php
      if (have_posts()) : while (have_posts()) : the_post();   
        $nome = get_field("nome__evento");
        $dataEhr = get_field("data__evento");
        $dataEhrArr = explode(" ", $dataEhr);
        $data = $dataEhrArr[0];
        $hora = $dataEhrArr[1];
        $imagem = get_field("imagem__evento");
        $local = get_field("local__evento");
        $texto = get_field("texto__evento");
        $link_do_evento = get_field("link_do_evento");
        $cor_escura = get_field("cor_escura");
        $verifica_cor = ($cor_escura == true) ? 'black' : '';
        $categories = get_the_terms($post->ID, 'tipo');
      ?>
      <article class="cards cards__content">
        <img <?php awesome_acf_responsive_image($imagem,'mobile','1024px'); ?> alt="">
        <div class="cards cards__infos">
          <?php 
            if ($categories) {
            foreach($categories as $category) { 
              $titulo = $category->name;
              $slug = $category->slug;
          ?>
          <div class="btn__eventos-page <?php echo $slug; ?>">
            <?php echo $titulo; ?>
          </div>
          <?php } } ?>
          <h4 class="title__evento <?php echo $verifica_cor; ?>">o despertar da nova era da saúde</h4>
          <p class="text__descEventos <?php echo $verifica_cor; ?>">Dia <?php echo $data; ?> - as <?php echo $hora; ?> <br><?php echo $local; ?>
          </p>
        </div>
        <div class="text__descEventos textos">
          <?php echo $texto; ?>
        </div>
        <?php if($link_do_evento){ ?>
        <a href="<?php echo $link_do_evento; ?>" class="btn__saibaEventos" target="_blank">Saiba Mais</a>
        <?php } ?>
      </article>
      <?php endwhile; endif; ?>
    </div>
  </section>
</main>
<?php get_footer(); ?>