<div class="breadcrumb container">
  <ol class="breadcrumbs">
    <li><a href="<?php echo get_home_url(); ?>">Home</a></li>
    <?php if($tipo == "archive-eventos"){ ?>
    <li class="active">Eventos</li>
    <?php } else if($tipo == "archive-profissionais") { ?>
    <li class="active">Profissionais</li>
    <?php } else if($tipo == "archive-especialidades") { ?>
    <li class="active">Especialidades</li>
    <?php } else if($tipo == "single"){?>
    <li><a href="<?php echo get_home_url(); ?>/blog">Blog</a></li>
    <li class="active"><?php the_title(); ?></li>
    <?php } else if($tipo == "archive"){?>
    <li class="active">Blog</li>
    <?php } else{?>
    <li class="active"><?php the_title(); ?></li>
    <?php } ?>
  </ol>
</div>