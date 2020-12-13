<?php get_header(); 

  /* Template Name: Especialidades */
  $tipo = "archive-especialidades";
  set_query_var('tipo', $tipo);  

  $contatos = get_field('contatos', 'options');

  $whatsapp = $contatos[$args['whatsapp']];
  $whatsappLink = str_replace('-', '', $whatsapp);
  
?>
<main class="main">
  <?php
    get_template_part('/template-parts/header-page'); 
  ?>
  <section class="especialidades-page">
    <h1 class="title__especialidades-page">Especialidades</h1>
    <fieldset class="filtros">
      <legend>Faixa Etaria:</legend>
      <div class="btn__filtro">
        <input type="checkbox" id="filtroInfantil" class="filtroGeral">
        <label for="filtroInfantil" class="labelInfantil">Infantil</label>
      </div>

      <div class="btn__filtro">
        <input type="checkbox" id="filtroAdulto" class="filtroGeral">
        <label for="filtroAdulto" class="labelAdulto">Adulto</label>
      </div>

      <div class="btn__filtro">
        <input type="checkbox" id="filtroTodos" class="filtroGeral">
        <label for="filtroTodos" class="labelTodos">Todos</label>
      </div>
    </fieldset>

    <div class="cards-especialidades">
      <?php
        if (have_posts()) : while (have_posts()) : the_post();   
          $nomeEspec = get_the_title();
          $mensagemWhatsapp = $contatos['mensagem_whatsapp']." ".$nomeEspec;
          $whatsappLinkApi = "https://api.whatsapp.com/send?phone=5511".$whatsappLink."&text=".htmlentities(urlencode($mensagemWhatsapp));        
          $imagemEspec = get_field("imagem__especialidade");
          $textoEspec = get_field("texto__especialidade");
          $faixas = get_the_terms($post->ID, 'faixa-etaria');
      ?>
      <?php 
        if ($faixas) {
          foreach($faixas as $faixa) { 
            $slugFaixa = $faixa->slug;
      ?>

      <article class="card <?php echo $slugFaixa; ?>">
        <div class="card__titles">
          <img <?php awesome_acf_responsive_image($imagemEspec,'mobile','1024px'); ?> alt="">
          <h2 class="title__especial container">
            <?php echo $nomeEspec; ?>
          </h2>
        </div>
        <div class="card__content container">
          <div class="text__especialidades-page ">
            <?php echo $textoEspec; ?>
          </div>
          <div class="card__buttons">
            <a href="<?php echo $whatsappLinkApi; ?>" target="_blank" class="btn__agendar">agendar</a>
            <button class="btn__prof">Profissionais</button>
          </div>
        </div>
      </article>
      <!-- The Modal -->
      <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
          <div class="modal-header">
            <span class="close">&times;</span>
            <h2 class="title__modal">Profissionais:</h2>
          </div>
          <div class="modal-body">
            <p>Some text in the Modal Body</p>
            <p>Some other text...</p>
          </div>
        </div>
      </div>
      <!-- The Modal -->
      <?php } } ?>
      <?php endwhile; endif; ?>
    </div>
  </section>
</main>
<?php get_footer(); ?>