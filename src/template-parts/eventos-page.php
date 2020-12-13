<?php
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];
?>

<section class="eventos-page">
  <h1 class="title__eventos">EVENTOS</h1>
  <div class="cards">
    <article class="cards cards__content">
      <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="">
      <div class="cards cards__infos">
        <a href="" class="btn__eventos-page">
          Online
        </a>
        <h4 class="title__evento">o despertar da nova era da saúde</h4>
        <p class="text__descEventos">DIA 25/10 - AS 15H <br>LOCAL: CURSO ONLINE</p>
      </div>
      <p class="text__descEventos textos">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies.
      </p>
    </article>
  </div>
</section>