<?php echo $header; ?>
    <div class="page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1><?php echo $heading_title; ?></h1>
                    <?php if ($id_info_block == '12') {  /*  page contacts */ ?>
                        <section class="contact-page-section  position-relative">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-md-6 col-xs-12">
                                        <div class="row">
                                            <div class="wrap-info-block w-100">
                                                <h3>
                                                    Телефон интернет-магазина:
                                                </h3>
                                                <div class="info-block d-flex  align-items-center">

                                                    <div class="image-block">
                                                        <img class="main"
                                                             src="/catalog/view/theme/theme/images/main/phone.jpg"
                                                             alt="Иконка"/>
                                                        <img class="hover"
                                                             src="/catalog/view/theme/theme/images/main/phone-red.jpg"
                                                             alt="Иконка"/>
                                                    </div>
                                                    <div class="content">
                                                        <a href="tel:+7 (904)370-40-45" class="link">
                                                            +7 (904)370-40-45
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="wrap-info-block w-100">
                                                <h3>
                                                    Телефон оффлайн-магазина:
                                                </h3>
                                                <div class="info-block d-flex  align-items-center">

                                                    <div class="image-block">
                                                        <img class="main"
                                                             src="/catalog/view/theme/theme/images/main/phone.jpg"
                                                             alt="Иконка"/>
                                                        <img class="hover"
                                                             src="/catalog/view/theme/theme/images/main/phone-red.jpg"
                                                             alt="Иконка"/>
                                                    </div>
                                                    <div class="content">
                                                        <a href="tel:+7 (904)370-40-45" class="link">
                                                            +7 (904)370-40-45
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="wrap-info-block w-100">
                                                <h3>
                                                    Почта:
                                                </h3>
                                                <div class="info-block d-flex  align-items-center">
                                                    <div class="image-block">
                                                        <img class="main"
                                                             src="/catalog/view/theme/theme/images/main/mail.jpg"
                                                             alt="Иконка"/>
                                                        <img class="hover"
                                                             src="/catalog/view/theme/theme/images/main/mail-red.jpg"
                                                             alt="Иконка"/>
                                                    </div>
                                                    <div class="content">
                                                        <a href="mailto:buy@mrbuket.ru" class="link">
                                                            buy@mrbuket.ru
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="wrap-info-block w-100">
                                                <h3>
                                                    Мы в социальных сетях:
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-6 col-xs-12">
                                                        <div class="info-block d-flex  align-items-center">
                                                            <div class="image-block">
                                                                <img class="main"
                                                                     src="/catalog/view/theme/theme/images/main/inst.jpg"
                                                                     alt="Иконка"/>
                                                                <img class="hover"
                                                                     src="/catalog/view/theme/theme/images/main/inst-red.jpg"
                                                                     alt="Иконка"/>
                                                            </div>
                                                            <div class="content">
                                                                <a href="#" class="link">
                                                                    Мы в Инстаграм
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-6 col-xs-12">
                                                        <div class="info-block d-flex  align-items-center">
                                                            <div class="image-block">
                                                                <img class="main"
                                                                     src="/catalog/view/theme/theme/images/main/vk.png"
                                                                     alt="Иконка"/>
                                                                <img class="hover"
                                                                     src="/catalog/view/theme/theme/images/main/vk-red.jpg"
                                                                     alt="Иконка"/>
                                                            </div>
                                                            <div class="content">
                                                                <a href="#" class="link">
                                                                    Мы Вконтакте
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                        <div class="wrap-info-block">
                                            <h3>
                                                Адрес магазина:
                                            </h3>
                                            <div class="info-block d-flex  align-items-center">
                                                <div class="image-block">
                                                    <img class="main"
                                                         src="/catalog/view/theme/theme/images/main/map.jpg"
                                                         alt="Иконка"/>
                                                    <img class="hover"
                                                         src="/catalog/view/theme/theme/images/main/map-red.jpg"
                                                         alt="Иконка"/>
                                                </div>
                                                <div class="content">
                                                    г.Кемерово, ул. Ноградская, 22<br>
                                                    <span>(вход со стороны ул.Ноградской)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="map"></div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    <?php } else if ($id_info_block == '8') {  /*  page collaboration */ ?>
                        <section class="banner-section  position-relative">
                            <img src="/catalog/view/theme/theme/images/main/collaboration-bg.jpg" alt="баннер"/>
                            <div class="text w-100">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-12 "></div>
                                    <div class="col-lg-6 col-sm-12 ">
                                        С нами<br>
                                        <span>креативно </span>
                                        <p>
                                            выгодные условия сотрудничества
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="description-section">
                            <?php echo $description; ?>
                        </section>
                        <section class="featured-section">
                            <h2>
                                что мы предлагаем
                            </h2>
                            <div class="row">
                                <div class="first w-100 d-lg-flex">
                                    <div class="item  position-relative col-lg-4 col-md-5 col-sm-12">
                                        <img src="/catalog/view/theme/theme/images/main/с-1.png" alt="иконка"/>
                                        <p>
                                            Яркое преимущество сотрудничества
                                        </p>
                                    </div>
                                    <div class="item  position-relative col-lg-4 col-md-5 col-sm-12">
                                        <img src="/catalog/view/theme/theme/images/main/с-2.png" alt="иконка"/>
                                        <p>
                                            Яркое преимущество сотрудничества
                                        </p>
                                    </div>
                                    <div class="item  position-relative col-lg-4 col-md-5 col-sm-12">
                                        <img src="/catalog/view/theme/theme/images/main/с-3.png" alt="иконка"/>
                                        <p>
                                            Яркое преимущество сотрудничества
                                        </p>
                                    </div>
                                </div>
                                <div class="second w-100 d-lg-flex">
                                    <div class="item  position-relative col-lg-6 col-md-6 col-sm-12  d-flex justify-content-center">
                                        <img src="/catalog/view/theme/theme/images/main/с-4.png" alt="иконка"/>
                                        <p>
                                            Яркое преимущество сотрудничества
                                        </p>
                                    </div>
                                    <div class="item  position-relative col-lg-6 col-md-6 col-sm-12  d-flex justify-content-center">
                                        <img src="/catalog/view/theme/theme/images/main/с-5.png" alt="иконка"/>
                                        <p>
                                            Яркое преимущество сотрудничества
                                        </p>
                                    </div>

                                </div>

                                <div class="w-100">
                                    <a href="#" class="link-order">
                                        Оставить заявку
                                    </a>
                                </div>


                            </div>
                        </section>

                    <?php } else { ?>

                        <?php echo $column_left; ?>
                        <?php if ($column_left && $column_right) { ?>
                            <?php $class = 'col-sm-6'; ?>
                        <?php } elseif ($column_left || $column_right) { ?>
                            <?php $class = 'col-sm-9'; ?>
                        <?php } else { ?>
                            <?php $class = 'col-sm-12'; ?>
                        <?php } ?>
                        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                            <h1><?php echo $heading_title; ?></h1>
                            <?php echo $description; ?><?php echo $content_bottom; ?></div>
                        <?php echo $column_right; ?>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>