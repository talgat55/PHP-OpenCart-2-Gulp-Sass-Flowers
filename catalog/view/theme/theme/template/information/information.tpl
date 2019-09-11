<?php echo $header; ?>
    <div class="page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1><?php echo $heading_title; ?></h1>
                    <?php if ($id_info_block == '8') {  /*  page collaboration */ ?>
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