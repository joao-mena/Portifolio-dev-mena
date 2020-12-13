<?php get_header(); 

    $tipo = "archive-blogs";
    set_query_var('tipo', $tipo);


?>
<main class="main">
  <?php
        get_template_part('/template-parts/header-page'); 
    ?>
  <section class="blogs">
    <?php 
      $argNews = array(
          'post_type'  => 'post',
          'posts_per_page' => 40,
          'no_found_rows' => true,
          'update_post_meta_cache' => false,
          'update_post_term_cache' => false,
      );
      $news = new WP_Query( $argNews );

      if( $news->have_posts() ): while( $news->have_posts() ) : $news->the_post();
        $title = get_the_title();
        $excerpt = get_the_excerpt();
        $link = get_the_permalink();
    ?>
    <article class="card">
      <div class="card__titulo container">
        <img src="<?php echo get_template_directory_uri() . '/assets/img/foto01.jpg' ?>" class="blogs__img">
        <h1 class="title__blogs">
          <?php echo $title; ?>
        </h1>
      </div>
      <div class="card__content container">
        <div class="text__blogs">
          <?php echo $excerpt; ?>
        </div>
        <a href="<?php echo $link; ?>" class="btn__blogs">Leia mais</a>
      </div>
    </article>
    <?php
        endwhile; endif;       
    ?>
  </section>
</main>
<?php get_footer(); ?>