<?php echo $header; ?>

<div class="row">
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12">
        <section class="home-banner position-relative d-flex  align-items-center"
                 style="background: url(<?php echo $bannerfirst['url']; ?>);">
            <div class=" w-100 ">
                <div class="container">
                    <div class="row">
                        <div class="content">
                            <div class="text">
                                <?php echo $bannerfirst['title']; ?>
                            </div>
                            <a href="<?php echo $bannerfirst['link']; ?>" class="link ">
                                подарить
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="products-filter-list-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h2 class="w-100 sub-title">
                            Подобрать букет
                        </h2>
                        <div class="filter-block">
                            <form>
                                <div class="d-flex">
                                    <div class="first col-lg-8 col-md-12 row">
                                        <?php foreach($filter_attributes as $attribute){ ?>
                                        <label class="radio-input col-md-3 position-relative">
                                            <div class="wrap">
                                                <input name="attribute" type="checkbox"
                                                       value="<?=$attribute['attribute_id']; ?>">

                                                <span><?=$attribute['name']; ?></span>
                                                <div class="active-element">
                                                    <img src="/image/close.png" alt="иконка"/>
                                                </div>
                                            </div>
                                        </label>
                                        <?php }  ?>
                                    </div>
                                    <div class="second col-lg-4 col-md-12">
                                        <div id="slider" min="1000" max="12000">
                                            <div id="custom-handle" class="ui-slider-handle"> <div class="float-value"></div></div>
                                        </div>

                                        <div id="clear-filter" class="text-right">
                                            <a href="#">
                                                <img src="/catalog/view/theme/theme/images/main/close.png" alt="иконка" />
                                                <span>
                                                    Сбросить фильтр
                                                </span>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <ul class="product-layout product-list row">
                            <?php    foreach ($products_filter as $product) { ?>
                            <li class=" product-item  col-lg-3 col-md-6  col-xs-12">
                                <div class="product-thumb">
                                    <div class="image position-relative">
                                        <button class="add-wishlist" type="button" data-toggle="tooltip"
                                                title="<?php echo $button_wishlist; ?>"
                                                onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                    class="fa fa-heart"></i>
                                        </button>
                                        <a href="<?php echo $product['href']; ?>">
                                            <img src="<?php echo $product['thumb']; ?>"
                                                 alt="<?php echo $product['name']; ?>"
                                                 title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                        </a>
                                    </div>
                                    <div>
                                        <div class="caption">
                                            <h3>
                                                <a href="<?php echo $product['href']; ?>">
                                                    <?php echo $product['name']; ?>
                                                </a>
                                            </h3>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <?php if ($product['price']) { ?>
                                                <p class="price">
                                                    <?php if (!$product['special']) { ?>
                                                    <?php echo $product['price']; ?>
                                                    <?php } else { ?>
                                                    <span class="price-new"><?php echo $product['special']; ?></span>
                                                    <span
                                                            class="price-old"><?php echo $product['price']; ?></span>
                                                    <?php } ?>
                                                    <?php if ($product['tax']) { ?>
                                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                    <?php } ?>
                                                </p>
                                                <?php } ?>
                                                <button class="add-to-cart" type="button"
                                                        onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                                    Заказать
                                                </button>

                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="mt-lg-40  mb-lg-40">
            <div class="container product-page  center">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <a class="link-banner" href="<?php echo $bannerone['href']; ?>">
                            <img src="<?php echo $bannerone['url']; ?>" alt="Баннер"/>
                        </a>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <a class="link-banner" href="<?php echo $bannertwo['href']; ?>">
                            <img src="<?php echo $bannertwo['url']; ?>" alt="Баннер"/>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="products-list-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h2 class="w-100 sub-title">
                            Сборные букеты
                        </h2>
                        <ul class="product-layout product-list row">
                            <?php    foreach ($products_pack as $product) { ?>
                            <li class=" product-item  col-lg-3 col-md-6  col-xs-12">
                                <div class="product-thumb">
                                    <div class="image position-relative">
                                        <button class="add-wishlist" type="button" data-toggle="tooltip"
                                                title="<?php echo $button_wishlist; ?>"
                                                onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                    class="fa fa-heart"></i>
                                        </button>
                                        <a href="<?php echo $product['href']; ?>">
                                            <img src="<?php echo $product['thumb']; ?>"
                                                 alt="<?php echo $product['name']; ?>"
                                                 title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                        </a>
                                    </div>
                                    <div>
                                        <div class="caption">
                                            <h3>
                                                <a href="<?php echo $product['href']; ?>">
                                                    <?php echo $product['name']; ?>
                                                </a>
                                            </h3>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <?php if ($product['price']) { ?>
                                                <p class="price">
                                                    <?php if (!$product['special']) { ?>
                                                    <?php echo $product['price']; ?>
                                                    <?php } else { ?>
                                                    <span class="price-new"><?php echo $product['special']; ?></span>
                                                    <span
                                                            class="price-old"><?php echo $product['price']; ?></span>
                                                    <?php } ?>
                                                    <?php if ($product['tax']) { ?>
                                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                    <?php } ?>
                                                </p>
                                                <?php } ?>
                                                <button class="add-to-cart" type="button"
                                                        onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                                    Заказать
                                                </button>

                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                        <div class="bottom__link-all w-100 d-md-flex  justify-content-center">
                            <a href="#" class="link__alt">
                                Перейти в каталог
                            </a>
                        </div>
                    </div>
                </div>

        </section>
        <section class="products-carousel-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h2 class="w-100 sub-title">
                            Сборные букеты
                        </h2>
                        <div class="carousel-wrapper position-relative">
                            <ul class="list-products-carousel">
                                <?php foreach ($products_boxes as $product) { ?>
                                <li class=" product-item   col-xs-12">
                                    <div class="product-thumb">
                                        <div class="image position-relative">
                                            <button class="add-wishlist" type="button" data-toggle="tooltip"
                                                    title="<?php echo $button_wishlist; ?>"
                                                    onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                        class="fa fa-heart"></i>
                                            </button>
                                            <a href="<?php echo $product['href']; ?>">
                                                <img src="<?php echo $product['thumb']; ?>"
                                                     alt="<?php echo $product['name']; ?>"
                                                     title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                            </a>
                                        </div>
                                        <div>
                                            <div class="caption">
                                                <h3>
                                                    <a href="<?php echo $product['href']; ?>">
                                                        <?php echo $product['name']; ?>
                                                    </a>
                                                </h3>
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <?php if ($product['price']) { ?>
                                                    <p class="price">
                                                        <?php if (!$product['special']) { ?>
                                                        <?php echo $product['price']; ?>
                                                        <?php } else { ?>
                                                        <span class="price-new"><?php echo $product['special']; ?></span>
                                                        <span
                                                                class="price-old"><?php echo $product['price']; ?></span>
                                                        <?php } ?>
                                                        <?php if ($product['tax']) { ?>
                                                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                        <?php } ?>
                                                    </p>
                                                    <?php } ?>
                                                    <button class="add-to-cart" type="button"
                                                            onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                                        Заказать
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <?php } ?>
                            </ul>

                        </div>
                        <div class="bottom__link-all w-100 d-md-flex  justify-content-center">
                            <a href="#" class="link__alt">
                                Перейти в каталог
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="products-list-section  fruits-products">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h2 class="w-100 sub-title">
                            Фруктовые букеты
                        </h2>
                        <ul class="product-layout product-list row">
                            <?php    foreach ($products_fruits as $product) { ?>
                            <li class=" product-item  col-lg-3 col-md-6  col-xs-12">
                                <div class="product-thumb">
                                    <div class="image position-relative">
                                        <button class="add-wishlist" type="button" data-toggle="tooltip"
                                                title="<?php echo $button_wishlist; ?>"
                                                onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                    class="fa fa-heart"></i>
                                        </button>
                                        <a href="<?php echo $product['href']; ?>">
                                            <img src="<?php echo $product['thumb']; ?>"
                                                 alt="<?php echo $product['name']; ?>"
                                                 title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                        </a>
                                    </div>
                                    <div>
                                        <div class="caption">
                                            <h3>
                                                <a href="<?php echo $product['href']; ?>">
                                                    <?php echo $product['name']; ?>
                                                </a>
                                            </h3>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <?php if ($product['price']) { ?>
                                                <p class="price">
                                                    <?php if (!$product['special']) { ?>
                                                    <?php echo $product['price']; ?>
                                                    <?php } else { ?>
                                                    <span class="price-new"><?php echo $product['special']; ?></span>
                                                    <span
                                                            class="price-old"><?php echo $product['price']; ?></span>
                                                    <?php } ?>
                                                    <?php if ($product['tax']) { ?>
                                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                    <?php } ?>
                                                </p>
                                                <?php } ?>
                                                <button class="add-to-cart" type="button"
                                                        onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                                    Заказать
                                                </button>

                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                        <div class="bottom__link-all w-100 d-md-flex  justify-content-center">
                            <a href="#" class="link__alt">
                                Перейти в каталог
                            </a>
                        </div>
                    </div>
                </div>

        </section>
        <section class="middle-banner position-relative d-flex  align-items-center mb-lg-90 mb-sm-30 "
                 style="background: url(<?php echo $bannermiddle['url']; ?>);">
            <div class=" w-100 ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-sm-12">

                        </div>
                        <div class="col-lg-5 col-sm-12">
                            <div class="content">
                                <div class="title">
                                    <?php echo $bannermiddle['name']; ?>
                                </div>
                                <div class="text">
                                    <?php echo $bannermiddle['title']; ?>
                                </div>

                                <a href="<?php echo $bannermiddle['link']; ?>" class="link ">
                                    Оформить заявку
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="products-carousel-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h2 class="w-100 sub-title">
                            Игрушки
                        </h2>
                        <div class="carousel-wrapper position-relative">
                            <ul class="list-products-carousel">
                                <?php foreach ($products_toys as $product) { ?>
                                <li class=" product-item   col-xs-12">
                                    <div class="product-thumb">
                                        <div class="image position-relative">
                                            <button class="add-wishlist" type="button" data-toggle="tooltip"
                                                    title="<?php echo $button_wishlist; ?>"
                                                    onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                        class="fa fa-heart"></i>
                                            </button>
                                            <a href="<?php echo $product['href']; ?>">
                                                <img src="<?php echo $product['thumb']; ?>"
                                                     alt="<?php echo $product['name']; ?>"
                                                     title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                            </a>
                                        </div>
                                        <div>
                                            <div class="caption">
                                                <h3>
                                                    <a href="<?php echo $product['href']; ?>">
                                                        <?php echo $product['name']; ?>
                                                    </a>
                                                </h3>
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <?php if ($product['price']) { ?>
                                                    <p class="price">
                                                        <?php if (!$product['special']) { ?>
                                                        <?php echo $product['price']; ?>
                                                        <?php } else { ?>
                                                        <span class="price-new"><?php echo $product['special']; ?></span>
                                                        <span
                                                                class="price-old"><?php echo $product['price']; ?></span>
                                                        <?php } ?>
                                                        <?php if ($product['tax']) { ?>
                                                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                        <?php } ?>
                                                    </p>
                                                    <?php } ?>
                                                    <button class="add-to-cart" type="button"
                                                            onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                                        Заказать
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <?php } ?>
                            </ul>

                        </div>
                        <div class="bottom__link-all w-100 d-md-flex  justify-content-center">
                            <a href="#" class="link__alt">
                                Перейти в каталог
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="bottom-banner position-relative d-flex  align-items-center mb-lg-90 mb-sm-30"
                 style="background: url(<?php echo $bannerbottom['url']; ?>);">
            <div class=" w-100 ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="content">
                                <div class="title">
                                    <?php echo $bannerbottom['name']; ?>
                                </div>
                                <div class="text">
                                    <?php echo $bannerbottom['title']; ?>
                                </div>

                                <a href="<?php echo $bannerbottom['link']; ?>" class="link ">
                                    Заказать
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container product-page  bottom">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <h2>
                            Контакты
                        </h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <div class="row">
                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/phone.jpg"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/phone-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        <a href="tel:+7 (904)370-40-45" class="link">
                                            +7 (904)370-40-45
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/mail.jpg"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/mail-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        <a href="mailto:buy@mrbuket.ru" class="link">
                                            buy@mrbuket.ru
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/map.jpg"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/map-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        г.Кемерово, ул. Ноградская, 22<br>
                                        <span>(вход со стороны ул.Ноградской)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/blogging.jpg"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/blogging-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        Наши отзывы
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/inst.jpg"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/inst-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        Мы в Инстаграм
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-12">
                                <div class="info-block d-flex  align-items-center">
                                    <div class="image-block">
                                        <img class="main" src="/catalog/view/theme/theme/images/main/vk.png"
                                             alt="Иконка"/>
                                        <img class="hover" src="/catalog/view/theme/theme/images/main/vk-red.jpg"
                                             alt="Иконка"/>
                                    </div>
                                    <div class="content">
                                        Мы Вконтакте
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div id="map"></div>
                    </div>
                </div>

            </div>
        </section>

        <?php echo $content_top; ?><?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?></div>

<?php echo $footer; ?>