<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title;  ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta property="og:title" content="<?php echo $title; ?>"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
    <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
    <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap&subset=cyrillic"
          rel="stylesheet">
    <link href="catalog/view/theme/theme/css/style.css" rel="stylesheet">
    <link href="catalog/view/theme/theme/css/bootstrap.min.css" rel="stylesheet">
    <link href="catalog/view/theme/theme/css/slick.css" rel="stylesheet">
    <link href="catalog/view/theme/theme/css/slick-theme.css" rel="stylesheet">

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/theme/theme/js/slick.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/theme/js/default.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="body-wrapper">
<header>

    <?php  if(!empty($informations)) { ?>
    <div id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xs-12 d-flex align-items-center">
                    <nav>
                        <ul class="list-links d-flex">
                            <?php foreach ($informations as $information) { ?>
                            <li>
                                <a href="<?php echo $information['href']; ?>">
                                    <?php echo $information['title']; ?>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2 col-xs-12">
                    <div id="create-order-link">
                        <a href="#">
                            Заказать звонок
                        </a>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <?php  } ?>
    <div class="center-header">
        <div class="container">
            <div class="row align-items-center">
                <div id="logo" class="col">
                    <div id="logo">
                        <?php if ($logo) { ?>
                        <?php if ($home == $og_url) { ?>
                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                             class="img-responsive"/>
                        <?php } else { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } ?>
                        <?php } else { ?>
                        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col delivery-block d-flex align-items-center">
                    <img src="/catalog/view/theme/theme/images/main/delivery-icon.png" alt="Изображение"/>
                    <p>
                        Доставка <br>
                        цветов
                    </p>
                </div>
                <div class="col search-block">
                    <?php echo $search; ?>
                </div>
                <div class="phone-block">
                    <a href="tel:+7 (904)370-40-45" class="d-flex align-items-center">
                        <img src="/catalog/view/theme/theme/images/main/phone-icon.png" alt="Иконка"/>
                        <p>
                            +7 (904)370-40-45
                        </p>
                    </a>
                </div>
                <div class="col">
                    <div class="d-flex justify-content-end">
                        <?php echo $cart; ?>
                    </div>
                    <div id="favorite" class="d-flex justify-content-end">
                        <a href="/wishlist/" class="wish-block d-flex  align-items-center">
                            <i class="fas fa-heart"></i>
                            <div class="d-flex">
                                <p>
                                    Избранное:
                                </p>
                                <span class="count">
                                    <?php echo $text_wishlist; ?>
                                </span>
                            </div>


                        </a>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="bottom-header ">
        <div class="container">
            <div class="row">
                <div class="first  col-md-2  d-flex align-items-center">
                    <p>
                        Каталог
                    </p>
                    <img src="/catalog/view/theme/theme/images/main/bar.png" alt="Иконка"/>
                </div>
                <div class="second col-md-10">
                    <?php if(!empty($categories)){ ?>
                        <ul class="list-links d-flex justify-content-between">
                            <?php  foreach($categories as $category){  ?>
                                <li>
                                    <a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                    <?php  } ?>

                </div>
            </div>
        </div>


    </div>


</header>
