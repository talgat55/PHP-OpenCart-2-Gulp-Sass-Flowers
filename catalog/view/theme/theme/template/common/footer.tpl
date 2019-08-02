<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xs-12">
                <div>
                    <a href="/" class="footer-logo">
                        <img src="/catalog/view/theme/theme/images/main/footer-logo.png" alt="Логотип"/>
                    </a>
                </div>
            </div>
            <div class="col-md-8 col-xs-12">
                <div class="d-flex align-items-center  top">
                    <img class="footer-img-delivery" src="/catalog/view/theme/theme/images/main/delivery-footer.png" alt="Иконка"/>
                    <p>
                        круглосуточная доставка цветов<br>
                        в Кемерово
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-xs-12">

                <?php if ($informations) { ?>
                <ul class="list-links">
                    <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
                <?php } ?>
                <a target="_blank" class="bottom-copyright" title="Перейти на сайт разработчика" href="http://asmart-group.ru/">Сайт создан <span>IT-company ASMART</span></a>
            </div>
            <div class="col-md-8 col-xs-12">

                <div class="row">
                    <div class="col-lg-6 col-xs-12">
                        <?php if(!empty($categories)){ ?>
                        <ul class="list-links  ">
                            <?php  foreach($categories as $category){  ?>
                                <li>
                                    <a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                        <?php  } ?>
                    </div>
                    <div class="col-lg-6 col-xs-12">
                        <ul class="text-list">
                            <li>
                                <a href="/policy">Политика конфиденциальности</a>
                                <br>
                                <br>
                            </li>
                            <li>
                                <p>
                                    Предоставленные на сайте данные имеют информационный характер и не являются публичной офертой
                                </p>
                            </li>
                            <li>
                                <p>
                                    www.mrbuket.ru все права<br> защищены
                                </p>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>

</footer>
<!--   styles -->
<link href="catalog/view/theme/theme/css/fontawesome-all.min.css" rel="stylesheet">


<!--   scripts  -->

</body></html>