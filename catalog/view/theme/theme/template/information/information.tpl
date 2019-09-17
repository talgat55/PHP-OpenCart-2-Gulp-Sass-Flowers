<?php echo $header; ?>
    <div class="page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1><?php echo $heading_title; ?></h1>
                    <?php if ($id_info_block == '7') {  /*  how create order   */ ?>
                        <section class="how-create-order-page-section  position-relative">
                            <div class="description">
                                <?php echo $description; ?>
                            </div>
                            <ul class="list-steps">
                                <li class="item d-lg-flex">
                                    <div class="img-block">
                                        <img src="/catalog/view/theme/theme/images/main/order1.png" alt="картинка"/>
                                    </div>

                                    <div class="content">
                                        <h3 class="title">
                                            шаг 1
                                        </h3>
                                        <p>
                                            Выберите любой понравившийся букет
                                            из нашего каталога и добавьте его в корзину
                                        </p>
                                    </div>
                                </li>
                                <li class="item d-lg-flex">
                                    <div class="img-block">
                                        <img src="/catalog/view/theme/theme/images/main/order2.png" alt="картинка"/>
                                    </div>
                                    <div class="content">
                                        <h3 class="title">
                                            шаг 2
                                        </h3>
                                        <p>
                                            Перейдите в корзину и нажмите кнопку<br>
                                            <a href="/ckeckout">Оформить заказ</a>
                                        </p>
                                    </div>
                                </li>
                                <li class="item d-lg-flex">
                                    <div class="img-block">
                                        <img src="/catalog/view/theme/theme/images/main/order3.png" alt="картинка"/>
                                    </div>
                                    <div class="content">
                                        <h3 class="title">
                                            шаг 3
                                        </h3>
                                        <p>
                                            Заполните всю необходимую информацию,
                                            выберите способ <a class="b-b" href="#">доставки</a>
                                        </p>
                                    </div>
                                </li>
                                <li class="item d-lg-flex">
                                    <div class="img-block">
                                        <img src="/catalog/view/theme/theme/images/main/order4.png" alt="картинка"/>
                                    </div>
                                    <div class="content">
                                        <h3 class="title">
                                            шаг 4
                                        </h3>
                                        <p>
                                            Оплатите заказ любым удобным
                                            для Вас способом
                                        </p>
                                    </div>
                                </li>

                                <li class="item d-lg-flex">
                                    <div class="img-block">
                                        <img src="/catalog/view/theme/theme/images/main/order5.png" alt="картинка"/>
                                    </div>
                                    <div class="content">
                                        <h3 class="title">
                                            готово
                                        </h3>
                                        <p>
                                            Наш менеджер свяжется с Вами
                                            для уточнения деталей заказа
                                        </p>
                                    </div>
                                </li>
                            </ul>

                            <div class="w-100  mb-4">
                                <a href="#" class="link-order">
                                   перейти к покупкам
                                </a>
                            </div>

                        </section>
                    <?php } else if ($id_info_block == '4') {  /*  about page  */ ?>
                        <section class="about-page-section  position-relative">
                            <img class="bg-image" src="/catalog/view/theme/theme/images/main/bg-about.jpg"
                                 alt="баннер"/>
                            <p class="description  text-center">
                                <b>Не следует, однако забывать, что реализация намеченных плановых заданий в
                                    значительной степени обуславливает создание форм развития</b>. Товарищи! рамки и
                                место обучения
                                кадров
                                представляет собой интересный эксперимент проверки направлений прогрессивного развития.
                                Не следует, однако забывать, что консультация с широким активом требуют от нас анализа
                                систем массового участия. Идейные соображения высшего порядка, а также новая модель
                                организационной деятельности требуют определения и уточнения существенных финансовых и
                                административных условий. Не следует, однако забывать, что дальнейшее развитие различных
                                форм деятельности представляет собой интересный эксперимент проверки направлений
                                прогрессивного развития. Не следует, однако забывать, что постоянный количественный рост
                                и сфера нашей активности играет важную роль в формировании дальнейших направлений
                                развития.<br>
                                <br>
                                <b>
                                    Равным образом укрепление и развитие структуры обеспечивает широкому кругу
                                    (специалистов) участие в формировании модели развития. Идейные соображения высшего
                                    порядка, а также реализация намеченных плановых заданий требуют от нас анализа
                                    дальнейших направлений развития.</b>
                            </p>


                            <?php

                            $banners = array_chunk($banner, 4);
                            var_dump($banners);
                            ?>
                            <ul class="carousel-slider">
                                <?php foreach ($banners as $banner_value) : ?>
                                    <li class="row">
                                        <?php
                                        foreach ($banner_value as $key => $value) : ?>
                                            <?php
                                            if ($key == '1') {
                                                $class = 'col-lg-6 half';
                                            } else if ($key == '2' || $key == '3') {
                                                continue;
                                            } else {
                                                $class = 'col-lg-6';
                                            }
                                            ?>
                                            <div class="<?= $class; ?> col-md-12">
                                                <div class="img-bg"
                                                     style="  background: url(<?php echo $value['url']; ?>); "></div>
                                                <?php if ($key == '2' || $key == '3') {


                                                } ?>
                                            </div>
                                        <?php endforeach; ?>
                                    </li>
                                <?php endforeach; ?>
                            </ul>

                            <h2 class="text-left color-black">
                                Контакты
                            </h2>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row">
                                        <div class="col-lg-6 col-xs-12">
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
                                        <div class="col-lg-6 col-xs-12">
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

                                        <div class="col-lg-6 col-xs-12">
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
                                        <div class="col-lg-6 col-xs-12">
                                            <div class="info-block d-flex  align-items-center">
                                                <div class="image-block">
                                                    <img class="main"
                                                         src="/catalog/view/theme/theme/images/main/blogging.jpg"
                                                         alt="Иконка"/>
                                                    <img class="hover"
                                                         src="/catalog/view/theme/theme/images/main/blogging-red.jpg"
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
                                                    <img class="main"
                                                         src="/catalog/view/theme/theme/images/main/inst.jpg"
                                                         alt="Иконка"/>
                                                    <img class="hover"
                                                         src="/catalog/view/theme/theme/images/main/inst-red.jpg"
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
                                                    <img class="hover"
                                                         src="/catalog/view/theme/theme/images/main/vk-red.jpg"
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
                        </section>
                    <?php } else if ($id_info_block == '6') {  /*  delivery payment page  */ ?>
                        <section class="pay-delivery-page-section  position-relative">
                            <h2 class="w-100 text-left">
                                Оплата
                            </h2>
                            <p class="description">
                                С другой стороны начало повседневной работы по формированию позиции требуют определения
                                и уточнения систем массового участия. С другой стороны постоянное
                                информационно-пропагандистское обеспечение нашей деятельности требуют определения и
                                уточнения модели развития.

                            </p>
                            <div class="feature-row row">
                                <div class="item col-lg-6 col-sm-12   ">
                                    <img src="/catalog/view/theme/theme/images/main/pay.png" alt="иконка"/>
                                    <p class="w-100">
                                        <span>Через сайт</span><br>
                                        Любым удобоным способом
                                    </p>
                                </div>
                                <div class="item col-lg-6 col-sm-12   ">
                                    <img src="/catalog/view/theme/theme/images/main/debit-card.png" alt="иконка"/>
                                    <p class="w-100">
                                        <span>Наличными или по карте</span><br>
                                        при оформление самовывоза
                                    </p>
                                </div>

                            </div>
                        </section>
                        <section class="pay-delivery-page-section  position-relative">
                            <h2 class="w-100 text-left">
                                Доставка
                            </h2>
                            <p class="description">
                                С другой стороны начало повседневной работы по формированию позиции требуют определения
                                и уточнения систем массового участия. С другой стороны постоянное
                                информационно-пропагандистское обеспечение нашей деятельности требуют определения и
                                уточнения модели развития.

                            </p>
                            <div class="feature-row-alt row   justify-content-center">
                                <ul class="features-list">
                                    <li class="d-flex align-items-center">
                                        <img src="/catalog/view/theme/theme/images/main/list-item.png" alt="иконка"/>
                                        <p>
                                            <span>Бесплатная доставка</span> при заказе от 5 000р.
                                        </p>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <img src="/catalog/view/theme/theme/images/main/list-item.png" alt="иконка"/>
                                        <p>
                                            <span>Центральный район</span> - 200р.
                                        </p>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <img src="/catalog/view/theme/theme/images/main/list-item.png" alt="иконка"/>
                                        <p>
                                            <span>Ленинский, Рудничный, Заводской</span> - 250р.
                                        </p>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <img src="/catalog/view/theme/theme/images/main/list-item.png" alt="иконка"/>
                                        <p>
                                            <span>Кедровка, пос.Новостройка </span> - 600р.
                                        </p>
                                    </li>


                                </ul>
                            </div>
                        </section>
                    <?php }
                    if ($id_info_block == '12') {  /*  page contacts */ ?>
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

                            <?php echo $description; ?><?php echo $content_bottom; ?></div>
                        <?php echo $column_right; ?>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>