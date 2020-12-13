<?php

  $banners = get_field('banners', $idModulo);
  $titulo_bv = get_field('titulo_bv', $idModulo);
  $texto_bv = get_field('texto_bv', $idModulo);
  $cards_de_conteudos = get_field('cards_de_conteudos', $idModulo);
  $logoURL = get_field('logo_bv', $idModulo);
  $logo_bv = wp_get_attachment_image_src($logoURL, 'mobile'); 

?>

<section class="bemVindo container">
  <div class="infos">
    <h1 class="title__bemVindo">
      <?php echo $titulo_bv; ?>
    </h1>
    <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
    <div class="text__bemVindo">
      <?php echo $texto_bv; ?>
    </div>
  </div>
  <div class="cards">
    <?php foreach ($cards_de_conteudos as $card) {
      $image = wp_get_attachment_image_src($card['imagem'], 'full');
      $titulo_conteudo = $card['titulo_conteudo'];
      $texto_conteudo = $card['texto_conteudo'];
      $texto_botao_conteudo = $card['texto_botao_conteudo'];
      $link_conteudo = $card['link_conteudo'];
    ?>
    <article class="cards__content">
      <img src="" data-svg="<?php echo $image[0]; ?>" alt="" class="svg">
      <h1 class="title__cardbemVindo">
        <?php echo $titulo_conteudo; ?>
      </h1>
      <p class="text__cardbemVindo">
        <?php echo $texto_conteudo; ?>
      </p>
      <a href="<?php echo $link_conteudo; ?>" class="btn__cardbemVindo">
        <?php echo $texto_botao_conteudo; ?>
      </a>
    </article>
    <?php } ?>
  </div>
</section>