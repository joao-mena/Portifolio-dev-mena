<?php
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];

  $logoURL = get_field('logo', 'options');
  $logo_bv = wp_get_attachment_image_src($logoURL, 'mobile'); 

  $nome = 'ana paula melo';
  $profissao = 'Endocrinopediatria';
  $texto = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.';
?>
<section class="prof-page">
  <h1 class="title__prof-page">
    Profissionais
  </h1>
  <div class="cards">
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
    <article class="card">
      <div class="bg container">
        <div class="identific">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="" class="identific__img">
          <div class="identific__texto">
            <h2 class="title__name">
              <?php echo $nome ?>
            </h2>
            <p class="text__prof-page">
              <?php echo $profissao ?>
            </p>
            <img src="" data-svg="<?php echo $logo_bv[0]; ?>" alt="" class="svg">
          </div>
        </div>
        <div class="card__content">
          <p class="text__prof-page">
            <?php echo $texto ?>
          </p>
        </div>
      </div>
    </article>
  </div>
</section>