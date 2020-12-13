<?php
    $logoURL = get_field('logo', 'options');
    $logo = wp_get_attachment_image_src($logoURL, 'full'); 
    $complemento = get_field('conteudo_footer', 'options');

    $contatos = get_field('contatos', 'options');
    $telefone = $contatos['telefone'];
    $telefoneLink = str_replace('-', '', $telefone);

    $telefoneLink = str_replace('-', '', $telefone);

    $agendamentos = $contatos['agendamentos'];
    $agendamentosLink = str_replace('-', '', $agendamentos);

    $whatsapp = $contatos['whatsapp'];
    $whatsappLink = str_replace('-', '', $whatsapp);

    $mensagemWhatsapp = $contatos['mensagem_whatsapp'];
    $whatsappLinkApi = "https://api.whatsapp.com/send?phone=5511".$whatsappLink."&text=".htmlentities(urlencode($mensagemWhatsapp));

    $email = $contatos['email'];

    $endereco = get_field('endereco', 'options');

    $redes = array(
        'facebook' => 'facebook',
        'instagram' => 'instagram',
        'linkedin' => 'linkedin',
        'youtube' => 'youtube',
        'twitter' => 'twitter'
    );
?>

<footer class="footer">
    <div class="content">
        <div class="infos">
            <div class="logo">
                <img src="" data-svg="<?php echo $logo[0]; ?>" class="svg">
            </div>
            <ul class="social-menu">
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
            <div class="complemento">
                <p><?php echo $complemento; ?></p>
            </div>
        </div>
        <div class="contatos">
            <h3 class="title__footer">Contatos</h3>
            <p> <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></p> 
            <p> <a href="<?php echo $whatsappLinkApi;?>"><?php echo $whatsapp; ?></a></p> 
            <p> <a href="tel:+55011<?php echo $telefoneLink; ?>">+55 11 <?php echo $telefone; ?></a></p> 
        </div>
        <div class="endereco">
            <h3 class="title__footer">Endereço</h3>
            <address>
                <?php echo $endereco; ?>
            </address>
        </div>
    </div>
    <div class="copy">
        <p>Todos os direitos Reservados © 2020. <br>Desenvolvido por <a href="http://www.codeduck.com.br" target="_blank">codeduck</a></p>
    </div>
</footer>
