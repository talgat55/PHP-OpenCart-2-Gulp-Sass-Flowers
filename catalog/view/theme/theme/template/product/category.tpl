<?php echo $header; ?>
<div class="container  product-page  page-cat">

    <div class="row">
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="col-md-12 col-xs-12 "><?php echo $content_top; ?>
            <h1 class="main-title"><?php echo $heading_title; ?></h1>
            <?php if ($categories): ?>
            <div class="filter-page-wrapper">
                <div class="d-flex w-100 align-items-center  categories-block">
                    <div class="text">
                        Тематические подборки:
                    </div>
                    <div>
                        <ul class="lists-cats d-flex">

                            <?php foreach ($categories as $category_item) { ?>

                                <li>
                                    <a href="#"
                                       data-id="<?php echo $category_item['category_id']; ?>"
                                    >
                                        <?= $category_item['name']; ?>
                                    </a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <?php endif; ?>

                <?php /*if ($categories) { ?>
                <?php if (count($categories) <= 5) { ?>
                    <div class="row">
                        <div class="col-sm-3">

                            <ul>
                                <?php foreach ($categories as $category) { ?>
                                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                <?php } else { ?>
                    <div class="row">
                        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                            <div class="col-sm-3">
                                <ul>
                                    <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                            </div>
                        <?php } ?>
                    </div>
                <?php } ?>
            <?php } */ ?>
                <div class="row filter-block  ">
                    <div class="col-lg-4"></div>
                    <div class="second col-lg-4 col-md-12">
                        <div id="slider" data-min="<?php echo $minPrice; ?>" data-max="<?php echo $maxPrice; ?>">
                            <div id="custom-handle" class="ui-slider-handle">
                                <div class="float-value"></div>
                            </div>
                            <div class="d-flex justify-content-between  price-between">
                                <div class="start"><?php echo $minPrice; ?> р</div>
                                <div class="end"><?php echo $maxPrice; ?> р</div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div id="clear-filter" class="text-right m-0">
                            <a href="#" class="clear-filter">
                                <img src="/catalog/view/theme/theme/images/main/close.png" alt="иконка">
                                <span>
                                  Сбросить фильтр
                            </span>
                            </a>

                        </div>

                    </div>
                </div>
            </div>
            <?= $column_left; ?>

            <?php if ($products) { ?>

                <div class="row w-100">
                    <div class="wrapper-product-list w-100">
                        <ul class="product-layout product-list row  w-100">
                            <?php foreach ($products as $product) { ?>
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
                                                                <span class="price-tax"><?php echo $text_tax; ?><?php echo $product['tax']; ?></span>
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
                <div class="row justify-content-center mb-4">
                    <?php echo $pagination; ?>
                </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
                <p><?php echo $text_empty; ?></p>

            <?php } ?>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
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
                            <img class="main" src="/catalog/view/theme/theme/images/main/phone.jpg" alt="Иконка"/>
                            <img class="hover" src="/catalog/view/theme/theme/images/main/phone-red.jpg" alt="Иконка"/>
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
                            <img class="main" src="/catalog/view/theme/theme/images/main/mail.jpg" alt="Иконка"/>
                            <img class="hover" src="/catalog/view/theme/theme/images/main/mail-red.jpg" alt="Иконка"/>
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
                            <img class="main" src="/catalog/view/theme/theme/images/main/map.jpg" alt="Иконка"/>
                            <img class="hover" src="/catalog/view/theme/theme/images/main/map-red.jpg" alt="Иконка"/>
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
                            <img class="main" src="/catalog/view/theme/theme/images/main/blogging.jpg" alt="Иконка"/>
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
                            <img class="main" src="/catalog/view/theme/theme/images/main/inst.jpg" alt="Иконка"/>
                            <img class="hover" src="/catalog/view/theme/theme/images/main/inst-red.jpg" alt="Иконка"/>
                        </div>
                        <div class="content">
                            Мы в Инстаграм
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xs-12">
                    <div class="info-block d-flex  align-items-center">
                        <div class="image-block">
                            <img class="main" src="/catalog/view/theme/theme/images/main/vk.png" alt="Иконка"/>
                            <img class="hover" src="/catalog/view/theme/theme/images/main/vk-red.jpg" alt="Иконка"/>
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
<?php echo $footer; ?>
