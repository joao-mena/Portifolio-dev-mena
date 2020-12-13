<?php
  $img_page = get_field('imagens_page', 'options');
  $imagem_desk = $img_page['imagem_desk'];
  $imagem_mobile = $img_page['imagem_mobile'];
?>

<section class="blog-page">
  <div class="bg-header">
    <picture>
      <source <?php awesome_acf_responsive_image($imagem_desk,'desktop','fullhd'); ?> media="(min-width: 1024px)">
      <img <?php awesome_acf_responsive_image($imagem_mobile,'mobile','1024px'); ?> alt="">
    </picture>
    <h1 class="title__blog-page">TEMA</h1>
  </div>
  <article class="blog-page__content container">
    <h3 class="title__blog-page--content">o despertar da nova era da saúde</h3>
    <div class="text__blog-page">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque. Fusce non pretium enim, eget sodales ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum mollis nunc eu ornare iaculis. Phasellus facilisis massa vitae arcu egestas eleifend. Morbi posuere dui tortor, at imperdiet urna ultricies sit amet. Ut eu dictum mauris. Nam blandit mauris quis tortor commodo feugiat. Duis scelerisque urna dui, at venenatis massa sollicitudin vitae. Vivamus quis urna placerat, commodo felis a, vestibulum elit. Suspendisse dapibus porta sollicitudin. Vivamus mi tellus, lacinia eget porta ut, semper id felis. Nulla facilisi. Donec eget lorem ullamcorper, fermentum dolor non, feugiat justo. Phasellus in lorem pellentesque, fringilla neque vel, pharetra dui. Phasellus diam nisi, ultrices rhoncus viverra sit amet, congue sit amet enim. Nunc quis est sit amet diam faucibus faucibus vel et purus. Nulla sapien nisl, dictum eu turpis at, venenatis aliquam est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed quis faucibus lorem, in rutrum lectus. Sed feugiat mi in magna egestas, finibus bibendum neque sollicitudin. Quisque pharetra tempus tellus, eget vehicula turpis imperdiet ut. Pellentesque ultrices, ipsum ut rutrum viverra, nunc quam tempus purus, nec lobortis mauris velit vitae magna. Suspendisse sed pellentesque tortor. Aliquam et mollis enim, at suscipit urna. Aliquam scelerisque tellus odio, a laoreet eros consectetur sed. Nunc vestibulum velit id turpis maximus rutrum. Sed luctus luctus elit, et lobortis neque euismod eu. Nunc porta tellus et mauris sollicitudin malesuada. Integer ornare ornare ex. Maecenas a lacus et purus tristique mollis. Pellentesque sapien augue, commodo at dictum quis, bibendum eget augue. Proin vestibulum porttitor viverra. Nunc pharetra interdum ex, in tempor libero euismod id. Nam porttitor felis ornare faucibus commodo. Suspendisse at sem quis mi dignissim lacinia porttitor vel dolor.
    </div>
  </article>
</section>