<section class="eventos">
  <h1 class="title__eventos">EVENTOS</h1>
  <div class="cards">
    <?php
        $argEventos = array(
          'post_type'  => 'eventos',
          'posts_per_page' => 3,
          'no_found_rows' => true,
          'update_post_meta_cache' => false,
          'update_post_term_cache' => false,
      );
      $eventos = new WP_Query( $argEventos );
      if ($eventos->have_posts()) : while ($eventos->have_posts()) : $eventos->the_post();   

      $nome = get_field("nome__evento");
      $dataEhr = get_field("data__evento");
      $dataEhrArr = explode(" ", $dataEhr);
      $data = $dataEhrArr[0];
      $hora = $dataEhrArr[1];
      $imagem = get_field("imagem__evento");
      $local = get_field("local__evento");
      $categories = get_the_terms($post->ID, 'tipo');
    ?>

    <article class="cards__content">
      <div class="cards__link">
        <img <?php awesome_acf_responsive_image($imagem,'mobile','1024px'); ?> alt="">
        <?php 
          if ($categories) {
          foreach($categories as $category) { 
            $titulo = $category->name;
            $slug = $category->slug;
        ?>
        <div class="btn__eventos <?php echo $slug; ?>">
          <?php echo $titulo; ?>
        </div>
        <?php } } ?>

      </div>
      <div class="infos">
        <h4 class="title__evento"><?php echo $nome; ?></h4>
        <p class="text__descEventos">Dia <?php echo $data; ?> - as <?php echo $hora; ?> <br> <?php echo $local; ?>
        </p>
      </div>
    </article>
    <?php endwhile; endif; ?>
  </div>
</section>