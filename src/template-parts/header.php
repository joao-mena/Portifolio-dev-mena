<?php
    $logoURL = get_field('logo', 'options');
    $logo = wp_get_attachment_image_src($logoURL, 'full'); 
    $bg_header_mobile = get_field('bg_header_mobile', 'options');
    
    $contatos = get_field('contatos', 'options');
    $agendamentos = $contatos['agendamentos'];
    $agendamentosLink = str_replace('-', '', $agendamentos);

    $telefoneLink = str_replace('-', '', $telefone);
    $telefone = $contatos['telefone'];

    $whatsapp = $contatos['whatsapp'];
    $whatsappLink = str_replace('-', '', $whatsapp);

    $mensagemWhatsapp = $contatos['mensagem_whatsapp'];
    $whatsappLinkApi = "https://api.whatsapp.com/send?phone=5511".$whatsappLink."&text=".htmlentities(urlencode($mensagemWhatsapp));

    $email = $contatos['email'];

    $redes = array(
        'facebook' => 'facebook',
        'instagram' => 'instagram',
        'linkedin' => 'linkedin',
        'youtube' => 'youtube',
        'twitter' => 'twitter'
    );    
?>

<header id="header" class="">
  <input type="checkbox" id="burguer-menu">
  <label for="burguer-menu">
    <span></span>
  </label>
  <div class="containerHeader container">
    <div class="logo">
      <a href="<?php echo get_home_url(); ?>">
        <img src="" data-svg="<?php echo $logo[0]; ?>" class="svg">
      </a>
    </div>
    <nav>
      <div class="menu">
        <div class="bg_mobile">
          <img <?php awesome_acf_responsive_image($bg_header_mobile,'mobile','1024px'); ?> alt="">
        </div>
        <?php 
          $menuParameters = array(
            'theme_location'  =>  'principal',
            'containerHeader'       => false,
            'items_wrap'      => '<ul id="%1$s" class="menu-list">%3$s</ul>',
          );
          wp_nav_menu( $menuParameters );
        ?>
        <ul class="header__mobile">
          <li>
            <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/phone-square.svg'; ?>">
            <a href="tel:+55011<?php echo $telefoneLink; ?>">+55 11 <?php echo $telefone; ?></a>
          </li>
          <li>
            <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/envelope.svg'; ?>">
            <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
          </li>
          <li>
            <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/whatsapp.svg'; ?>">
            <a href="<?php echo $whatsappLinkApi;?>">(11) <?php echo $whatsapp; ?></a>
          </li>
        </ul>
        <ul class="social-menu header-social">
          <?php foreach($redes as $nome => $svg){ ?>
          <?php $link = get_field('link_'.$nome, 'option'); ?>
          <?php if(!empty($link)){ ?>
          <li>
            <a href="<?php echo $link; ?>" target="_blank">
              <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/'.$svg.'.svg'; ?>">
            </a>
          </li>
          <?php } ?>
          <?php } ?>
        </ul>
      </div>
    </nav>
  </div>
</header>