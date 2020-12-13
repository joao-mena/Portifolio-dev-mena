<?php
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];

  if($tipo == 'archive-profissionais'){
    $title = "Profissionais";
  } else if($tipo == 'archive-eventos'){
    $title = "Eventos";
  } else if($tipo == 'archive-especialidades'){
    $title = "Especialidades";
  } else if($tipo == 'archive-blogs'){
    $title = "Blog";
  } else {
    $title = get_the_title();
  }
?>
<section class="header-page ">
  <h1 class="title__headerPage container"><?php echo $title; ?></h1>
  <?php
    get_template_part('/template-parts/breadcrumb'); 
  ?>

  <picture>
    <source <?php awesome_acf_responsive_image($imagem_desk,'desktop','fullhd'); ?> media="(min-width: 1024px)">
    <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="">
  </picture>
</section>