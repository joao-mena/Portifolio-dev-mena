<?php
    $logoURL = get_field('logo', 'options');
    $logo = wp_get_attachment_image_src($logoURL, 'full'); 
    
    $contatos = get_field('contatos', 'options');

    $email = $contatos['email'];

    $redes = array(
      'github' => 'github',
      'linkedin' => 'linkedin',
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
            <img class="svg" data-svg="<?php echo get_template_directory_uri() . '/assets/img/envelope.svg'; ?>">
            <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
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