<?php

  /* Template Name: Profissionais */
  get_header();
  $tipo = "archive-profissionais";
  set_query_var('tipo', $tipo);

?>
<main>
  <?php
    get_template_part('/template-parts/header-page'); 
  ?>
  <section class="prof-page">
    <h1 class="title__prof-page">
      Profissionais
    </h1>
    <div class="cards">
      <?php
      if (have_posts()) : while (have_posts()) : the_post();   
        $nome = get_the_title();
        $iconeURL = get_field("icone__profissionais");
        $icone = wp_get_attachment_image_src($iconeURL, 'mobile'); 
        $foto = get_field("foto__profissionais");
        $texto = get_field("texto__profissionais");
        $insta = get_field("link_instagram_profi");
        $especialidades__prof = get_field("especialidades__prof");
        $outras_especialidades = get_field("outras_especialidades");
        $categories = get_the_terms($post->ID, 'profissao');
        $especialidades = "";
        foreach($especialidades__prof as $espec){
          $especialidades .= $espec->post_title.", ";
        }
      ?>
      <article class="card">
        <div class="bg container">
          <div class="identific">
            <img <?php awesome_acf_responsive_image($foto,'mobile','1024px'); ?> alt="" class="identific__img">
            <div class="identific__texto">
              <h2 class="title__name">
                <?php echo $nome ?>
              </h2>
              <div class="text__prof-page">
                <?php echo $especialidades ?>
                <?php echo $outras_especialidades ?>
              </div>
              <img src="" data-svg="<?php echo $icone[0]; ?>" alt="" class="svg">
              <ul class="social-menu header-social">
                <a href="<?php echo $insta; ?>" target="_blank">
                  <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/instagram.svg'; ?>">
                </a>
              </ul>
            </div>
          </div>
          <div class="card__content">
            <div class="text__prof-page">
              <?php echo $texto ?>
            </div>
          </div>
        </div>
      </article>
      <?php endwhile; endif; ?>
    </div>
  </section>

</main>


<?php get_footer(); ?>