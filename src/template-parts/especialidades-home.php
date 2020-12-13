<?php
  
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];
  
?>
<section class="especialidades container">
  <h1 class="title__especialidades">Especialidades</h1>
  <div id="splide-especialidades">
    <div class="splide__track">
      <ul class="splide__list">

        <?php
          $argEspecialidades = array(
            'post_type'  => 'especialidades',
            'posts_per_page' => 50,
            'no_found_rows' => true,
            'update_post_meta_cache' => false,
            'update_post_term_cache' => false,
            'orderby' => 'title',
            'order'   => 'ASC',
          );
          $especialidades = new WP_Query( $argEspecialidades );
          if ($especialidades->have_posts()) : while ($especialidades->have_posts()) : $especialidades->the_post();   
            $nome = get_the_title();
            $imagem = get_field("imagem-home__especialidade");
            $texto = get_field("texto-home__especialidade");
        ?>

        <li class="splide__slide">
          <img <?php awesome_acf_responsive_image($imagem,'mobile','1024px'); ?> alt="">
          <div class="infos">
            <h4 class="title__especialidade">
              <?php echo $nome; ?>
            </h4>
            <div class="text__desc"><?php echo $texto; ?></div>
            <a href="" class="btn__estudo">
              saiba mais
            </a>
          </div>
        </li>
        <?php endwhile; endif; ?>
      </ul>
    </div>
  </div>
</section>