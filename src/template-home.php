<?php get_header(); 

    /* Template Name: Home */

?>
<main class="main">
  <?php
    get_template_part('template-parts/banner-home', 'home');
    get_template_part('template-parts/bem-vindo', 'home');
    get_template_part('template-parts/profissionais-home', 'home');
    get_template_part('template-parts/especialidades-home', 'home');
    get_template_part('template-parts/eventos-home', 'home');
    get_template_part('template-parts/blog-home', 'home');
  ?>
</main>
<?php get_footer(); ?>