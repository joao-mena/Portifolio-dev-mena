<?php

    $mapa = get_field('mapa', 'option');
    $titulo = get_field('titulo_mapa', 'option');
    $frase = get_field('frase_mapa', 'option');

?>
<section class="container content__mapa">
    <div class="content">
        <header class="header header__section header--darkgreen">
            <h2><?php echo $titulo; ?></h2>
        </header>
    </div>
    <div class="header__texto">
        <div class="content--header">
                <p><?php echo $frase; ?></p>
        </div>
    </div>    
    <div class="mapa mapa--cursos">
        <div class="acf-map">
            <div class="marker" data-lat="<?php echo esc_attr($mapa['lat']); ?>" data-lng="<?php echo esc_attr($mapa['lng']); ?>"></div>
        </div>
    </div>
</section>