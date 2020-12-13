<?php

  $topicos__quemSomos = get_field('topicos__quemSomos', $idModulo);

  //sobre
  $icone__sobreurl = $topicos__quemSomos['icone__sobre'];
  $icone__sobre = wp_get_attachment_image_src($icone__sobreurl, 'mobile'); 
  $titulo__sobre = $topicos__quemSomos['titulo__sobre'];
  $texto__sobre = $topicos__quemSomos['texto__sobre'];
  $imagem__sobre = $topicos__quemSomos['imagem__sobre'];

  //missao
  $icone__missaourl = $topicos__quemSomos['icone__missao'];
  $icone__missao = wp_get_attachment_image_src($icone__missaourl, 'mobile'); 
  $titulo__missao = $topicos__quemSomos['titulo__missao'];
  $texto__missao = $topicos__quemSomos['texto__missao'];
  $imagem__missao = $topicos__quemSomos['imagem__missao'];

  //estrutura
  $icone__estruturaurl = $topicos__quemSomos['icone__estrutura'];
  $icone__estrutura = wp_get_attachment_image_src($icone__estruturaurl, 'mobile'); 
  $titulo__estrutura = $topicos__quemSomos['titulo__estrutura'];
  $texto__estrutura = $topicos__quemSomos['texto__estrutura'];

  $imagensEstrutura = get_field('imagens', 'options');
  
?>
<section class="quemSomos">
  <div class="grid-container">
    <article class="sobre">
      <div class="sobre-main">
        <img src="" data-svg="<?php echo $icone__sobre[0]; ?>" alt="" class="svg">
        <h1 class="title__quemSomos">
          <?php echo $titulo__sobre; ?>
        </h1>
      </div>
      <div class="sobre-content">
        <div class="text__quemSomos">
          <?php echo $texto__sobre; ?>
        </div>
      </div>
      <div class="sobre-img">
        <img <?php awesome_acf_responsive_image($imagem__sobre,'mobile','1024px'); ?> alt="" class="quemSomos__img">
      </div>
    </article>
    <article class="missao">
      <div class="missao-main">
        <img src="" data-svg="<?php echo $icone__missao[0]; ?>" alt="" class="svg">
        <h1 class="title__quemSomos">
          <?php echo $titulo__missao; ?>
        </h1>
      </div>
      <div class="missao-content">
        <div class="text__quemSomos">
          <?php echo $texto__missao; ?>
        </div>
      </div>
      <div class="missao-img">
        <img <?php awesome_acf_responsive_image($imagem__missao,'mobile','1024px'); ?> alt="" class="quemSomos__img">
      </div>
    </article>
    <article class="estrutura container">
      <div class="estrutura-main">
        <div class="estrutura-title">
          <img src="" data-svg="<?php echo $icone__estrutura[0]; ?>" alt="" class="svg">
          <h1 class="title__quemSomos">
            <?php echo $titulo__estrutura; ?>
          </h1>
        </div>
        <div class="estrutura-content">
          <div class="text__quemSomos">
            <?php echo $texto__estrutura; ?>
          </div>
        </div>
      </div>
      <div class="estrutura-carousel">
        <div id="primary-slider" class="splide">
          <div class="splide__track">
            <ul class="splide__list">
              <?php foreach($imagensEstrutura as $key => $imagem){ ?>
              <li class="splide__slide">
                <img loading="lazy" <?php awesome_acf_responsive_image($imagem,'mobile','1024px'); ?> alt="Estrutura - Entre irmaos">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div id="secondary-slider" class="splide">
          <div class="splide__track">
            <ul class="splide__list">
              <?php foreach($imagensEstrutura as $key => $imagem){ ?>
              <li class="splide__slide">
                <img loading="lazy" <?php awesome_acf_responsive_image($imagem,'mobile','1024px'); ?> alt="Estrutura - Entre irmaos">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
      </div>
    </article>
  </div>
</section>