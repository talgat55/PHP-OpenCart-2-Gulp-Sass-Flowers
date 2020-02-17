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
                                            <a href="/simplecheckout/">Оформить заказ</a>
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
                                            выберите способ <a class="b-b" href="/delivery">доставки</a>
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
                                <a href="/prefabricated_bouquets/" class="link-order">
                                    перейти к покупкам
                                </a>
                            </div>

                        </section>
                    <?php } else if ($id_info_block == '4') {  /*  about page  */ ?>
                        <section class="about-page-section  position-relative">
                            <img class="bg-image" src="/catalog/view/theme/theme/images/main/bg-about.jpg"
                                 alt="баннер"/>
                            <p class="description  text-center">
                                Добро пожаловать в интернет-магазин цветов mr-buket.ru<br><br>

                                У нас вы найдете и авторские букеты из традиционных и экзотических цветов, а также
                                оригинальные композиции и самые роскошные цветочные корзины.
                                В нашем онлайн-каталоге вы найдете и откроете для себя великолепные букеты и эффектные
                                цветочные композиции на любой вкус и по любому поводу. Вы сможете иметь возможность
                                сделать заказ на доставку цветов на день рождения или юбилей, на свадьбу или
                                корпоративное торжество, для близкого человека, либо для руководителя. Делать заказы на
                                нашем интернет-магазине mr-buket.ru – просто, быстро и удобно! Сделать заказ цветов и
                                оплатить выбранный букет получателю можно всего в пару кликов мышкой!
                            </p>
                            <?php  $banners = array_chunk($banner, 4);  ?>
                            <h2 class="heading-two"> МАГАЗИН mr.buket</h2>
                            <ul class="carousel-slider  desktop">
                                <?php foreach ($banners as $banner_value) : ?>
                                    <li class=" item">
                                        <div class="row ">
                                            <?php
                                            foreach ($banner_value as $key => $value) : ?>
                                                <?php
                                                if ($key == '1') {
                                                    $class = 'col-lg-12 half';
                                                    echo '<div class="row col-lg-6"> ';
                                                } else if ($key == '2' || $key == '3') {
                                                    $class = 'col-lg-6 half';
                                                } else {
                                                    $class = 'col-lg-6';
                                                }
                                                ?>
                                                <div class="<?= $class; ?>  sub-item col-md-12">

                                                    <a class="img-bg" href="<?php echo $value['url']; ?>"
                                                       data-lightbox="image-1"
                                                       style="display: block;  background: url(<?php echo $value['url']; ?>); ">
                                                        <div class="wrapper"></div>
                                                    </a>


                                                </div>
                                                <?php if ($key == '3') {
                                                    echo '</div> ';
                                                } ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                            <ul class="carousel-slider  mobile">
                                <?php foreach ($banners as $banner_value) : ?>
                                    <?php
                                    foreach ($banner_value as $key => $value) : ?>
                                        <li class=" item">
                                            <div class="  sub-item col-md-12">
                                                <a class="img-bg" href="<?php echo $value['url']; ?>"
                                                   data-lightbox="image-1"
                                                   style="display: block;  background: url(<?php echo $value['url']; ?>); ">
                                                    <div class="wrapper"></div>
                                                </a>
                                            </div>
                                        </li>
                                    <?php endforeach; ?>
                                <?php endforeach; ?>
                            </ul>


                            <div class="arrow-block d-flex justify-content-center  arrows-about-page">
                                <ul class="list-arrows d-flex">
                                    <li>
                                        <a href="#" class="left">
                                            <img src="/catalog/view/theme/theme/images/main/arrow-left-about.jpg"/>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="right">
                                            <img src="/catalog/view/theme/theme/images/main/arrow-right-about.jpg"/>
                                        </a>
                                    </li>

                                </ul>
                            </div>

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
                                                    <a href="mailto:buy@mr-buket.ru" class="link">
                                                        buy@mr-buket.ru
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
                                                    <a href="/shoprating/" class="link">
                                                        Наши отзывы
                                                    </a>
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
                                        <div class="vk-row  col-lg-6 col-xs-12">
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
                            <!--                            <p class="description">-->
                            <!--                                С другой стороны начало повседневной работы по формированию позиции требуют определения-->
                            <!--                                и уточнения систем массового участия. С другой стороны постоянное-->
                            <!--                                информационно-пропагандистское обеспечение нашей деятельности требуют определения и-->
                            <!--                                уточнения модели развития.-->
                            <!---->
                            <!--                            </p>-->
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
                        <section>
                            <p>
                                При оплате заказа банковской картой, обработка платежа (включая ввод номера карты)
                                происходит на защищенной странице процессинговой системы, которая прошла международную
                                сертификацию. Это значит, что Ваши конфиденциальные данные (реквизиты карты,
                                регистрационные данные и др.) не поступают в интернет-магазин, их обработка полностью
                                защищена и никто, в том числе наш интернет-магазин, не может получить персональные и
                                банковские данные клиента. оплата производится через экваринг Сбербанка.
                                <br>
                                <br>
                                При работе с карточными данными применяется стандарт защиты информации, разработанный
                                международными платёжными системами Visa и MasterCard - Payment Card Industry Data
                                Security Standard (PCI DSS), что обеспечивает безопасную обработку реквизитов Банковской
                                карты Держателя. Применяемая технология передачи данных гарантирует безопасность по
                                сделкам с Банковскими картами путем использования протоколов Transport Layer Security
                                (TLS), Verified by Visa, Secure Code, и закрытых банковских сетей, имеющих высшую
                                степень защиты.

                                В случае возврата, денежные средства возвращаются на ту же карту, с которой
                                производилась оплата.
                            </p>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-12">
                                    <img style="width: 100%;" src="/catalog/view/theme/theme/images/main/mir.jpg"
                                         alt="Логотип "/>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-12">
                                    <img style="height: 111px;  object-fit: none;"
                                         src="/catalog/view/theme/theme/images/main/visa_master_card.png"
                                         alt="Логотип "/>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-12">
                                    <img style="height: 111px;  object-fit: none;"
                                         src="/catalog/view/theme/theme/images/main/visa.png" alt="Логотип "/>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-12">
                                    <img style="height: 111px;  object-fit: none;"
                                         src="/catalog/view/theme/theme/images/main/mc.png" alt="Логотип "/>
                                </div>


                            </div>

                        </section>

                        <section class="pay-delivery-page-section  position-relative">
                            <h2 class="w-100 text-left">
                                Доставка
                            </h2>
                            <p class="description">
                                По всем спорным вопросам качества, комплектации, стоимости и времени доставки просим
                                связаться с нами по телефону
                                <a href="tel:+7 (904)370-40-45">+7 (904)370-40-45</a>
                                Отзывы и предложения можно направить на адрес: <a href="mailto:buy@mr-buket.ru">buy@mr-buket.ru</a>
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
                                                        <a href="mailto:buy@mr-buket.ru" class="link">
                                                            buy@mr-buket.ru
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

                                                    <div class="vk-row col-lg-6 col-xs-12">
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
                        <div id="content"  style="margin-bottom: 40px;"><?php echo $content_top; ?>

                            <?php echo $description; ?><?php echo $content_bottom; ?></div>
                        <?php echo $column_right; ?>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>