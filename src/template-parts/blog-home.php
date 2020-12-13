<?php
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];
?>
<section class="blogHome">
  <h1 class="title__blogHome">Blog</h1>
  <div class="grid-container">
    <div class="blog-home">
      <div class="destaque">
        <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?>  alt="" class="blogHome__img">
        <div class="blogHome__content">
          <p class="text__blogHome">o despertar da nova era da saúde</p>
          <a href="" class="btn__blogHome">
            Leia mais
          </a>
        </div>
      </div>
      <div class="left">
        <div class="l1">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?>  alt="" class="blogHome__img">
          <div class="blogHome__content">
            <p class="text__blogHome">o despertar da nova era da saúde</p>
            <a href="" class="btn__blogHome">
              Leia mais
            </a>
          </div>
        </div>
        <div class="l2">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?>  alt="" class="blogHome__img">
          <div class="blogHome__content">
            <p class="text__blogHome">o despertar da nova era da saúde</p>
            <a href="" class="btn__blogHome">
              Leia mais
            </a>
          </div>
        </div>
      </div>
      <div class="right">
        <div class="r1">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?>  alt="" class="blogHome__img">
          <div class="blogHome__content">
            <p class="text__blogHome">o despertar da nova era da saúde</p>
            <a href="" class="btn__blogHome">
              Leia mais
            </a>
          </div>
        </div>
        <div class="r2">
          <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?>  alt="" class="blogHome__img">
          <div class="blogHome__content">
            <p class="text__blogHome">o despertar da nova era da saúde</p>
            <a href="" class="btn__blogHome">
              Leia mais
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>