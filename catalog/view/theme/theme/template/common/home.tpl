<?php echo $header; ?>

<div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
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
        <section class="middle-banner position-relative d-flex  align-items-center"
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

        <section class="bottom-banner position-relative d-flex  align-items-center"
                 style="background: url(<?php echo $bannerbottom['url']; ?>);">
            <div class=" w-100 ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
6
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
        <?php echo $content_top; ?><?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?></div>

<?php echo $footer; ?>