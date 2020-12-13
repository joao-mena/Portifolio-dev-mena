<?php

    $banners = get_field('banners', $idModulo);

?>

<section class="slide-banner">
    <div class="glide">
        <div class="glide__track" data-glide-el="track">
            <div class="glide__slides sliders">
                <?php foreach ($banners as $banner) {
                    $background = $banner['imagens'];
                    $imgDesk = $background['desktop'];
                    $imgMobile = $background['mobile'];
                    $conteudo = $banner['conteudoBanner'];
                    $titulo = $conteudo['titulo_banner'];
                    $texto = $conteudo['texto_banner'];
                    $textoBtn = $conteudo['texto_botao_banner'];
                    $link = $conteudo['link_banner'];
                ?>
                    <div class="glide__slide">
                        <div class="slide">
                            <div class="bg">
                                <picture>
                                    <source <?php awesome_acf_responsive_image($imgDesk,'desktop','fullhd'); ?> media="(min-width: 1024px)">
                                    <img <?php awesome_acf_responsive_image($imgMobile,'mobile','1024px'); ?>  alt="">
                                </picture>
                            </div>
                            <div class="content container">
                                <h1 class="title__banner">
                                    <?php echo $titulo; ?>
                                </h1>
                                <p class="text__banner">
                                    <?php echo $texto; ?>
                                </p>
                                <a href="<?php echo $link; ?>" class="btn__saiba">
                                    <?php echo $textoBtn; ?>
                                </a>
                            </div>
                        </div>
                    </div>  
                <?php } ?>
            </div>
        </div>
        <div class="glide__bullets container" data-glide-el="controls[nav]">
            <?php foreach ($banners as $key => $banner) { ?>             
                <button class="glide__bullet" data-glide-dir="=<?php echo $key; ?>"></button>
            <?php } ?>
        </div>
    </div>
</section>