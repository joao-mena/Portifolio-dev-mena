<section class="profissionais">
  <h1 class="title__profissionais">Profissionais</h1>
  <div class="cards container">
    <?php
      $argProfissionais = array(
        'post_type'  => 'profissionais',
        'posts_per_page' => 50,
        'no_found_rows' => true,
        'update_post_meta_cache' => false,
        'update_post_term_cache' => false,
        'orderby' => 'title',
        'order'   => 'ASC',
        'meta_query' => array(
          array(
            'key'     => 'destaque',
            'value'   => 1,
            'compare' => '=',
          ),
        ),
      );
      $profissionais = new WP_Query( $argProfissionais );
      if ($profissionais->have_posts()) : while ($profissionais->have_posts()) : $profissionais->the_post();   
        $nome = get_the_title();
        $iconeURL = get_field("icone__profissionais");
        $icone = wp_get_attachment_image_src($iconeURL, 'mobile'); 
        $foto = get_field("foto__profissionais");
        $categories = get_the_terms($post->ID, 'profissao');
      ?>
    <article class="cards__content">
      <img <?php awesome_acf_responsive_image($foto,'mobile','1024px'); ?> alt="" class="cards__img">
      <h4 class="title__nome"><?php echo $nome; ?></h4>
      <p class="text__profissao">
        <?php 
          if ($categories) {
            foreach($categories as $category) {
              echo $titulo = $category->name;
            }
          }
        ?>
      </p>
      <img src="" data-svg="<?php echo $icone[0]; ?>" alt="" class="svg">
    </article>
    <?php endwhile; endif; wp_reset_query();?>

    <?php
      $arg = array(
        'post_type'  => 'profissionais',
        'posts_per_page' => 50,
        'no_found_rows' => true,
        'update_post_meta_cache' => false,
        'update_post_term_cache' => false,
        'orderby' => 'title',
        'order'   => 'ASC',
        'meta_query' => array(
          array(
              'key'     => 'destaque',
              'value'   => 0,
              'compare' => '=',
          ),
        ),
      );
      $profissionais2 = new WP_Query( $arg );
      if ($profissionais2->have_posts()) : while ($profissionais2->have_posts()) : $profissionais2->the_post();   
        $nome = get_the_title();
        $iconeURL = get_field("icone__profissionais");
        $icone = wp_get_attachment_image_src($iconeURL, 'mobile'); 
        $foto = get_field("foto__profissionais");
        $categories = get_the_terms($post->ID, 'profissao');
      ?>
    <article class="cards__content">
      <img <?php awesome_acf_responsive_image($foto,'mobile','1024px'); ?> alt="" class="cards__img">
      <h4 class="title__nome"><?php echo $nome; ?></h4>
      <p class="text__profissao">
        <?php 
          if ($categories) {
            foreach($categories as $category) {
              echo $titulo = $category->name;
            }
          }
        ?>
      </p>
      <img src="" data-svg="<?php echo $icone[0]; ?>" alt="" class="svg">
    </article>
    <?php endwhile; endif; wp_reset_query();?>
  </div>
</section>