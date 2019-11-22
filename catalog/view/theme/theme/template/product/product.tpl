<?php echo $header; ?>
<div class="container">

    <div class="row  "><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="col-sm-12"><?php echo $content_top; ?>
            <div id="product" class="row single">
                <?php if ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                <?php } else { ?>
                    <?php $class = 'col-sm-8'; ?>
                <?php } ?>
                <div class="col-lg-5 col-md-12">
                    <?php if ($thumb || $images) { ?>
                        <div class="thumbnails">
                            <?php if ($thumb) { ?>
                                <a class="thumbnail" href="<?php echo $popup; ?>"
                                   title="<?php echo $heading_title; ?>">
                                    <img src="<?php echo $thumb; ?>"
                                         title="<?php echo $heading_title; ?>"
                                         alt="<?php echo $heading_title; ?>"/>
                                </a>

                            <?php } ?>
                            <?php if ($images) { ?>
                                <ul class="list-products-thumbnails-add  d-flex">
                                    <?php foreach ($images as $image) { ?>
                                        <li class="image-additional">
                                            <a class="thumbnail"
                                               href="<?php echo $image['popup']; ?>"
                                               title="<?php echo $heading_title; ?>">
                                                <img  width="75" height="75"
                                                        src="<?php echo $image['thumb']; ?>"
                                                        title="<?php echo $heading_title; ?>"
                                                        alt="<?php echo $heading_title; ?>"/>
                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            <?php } ?>
                        </div>
                    <?php } ?>


                </div>
                <?php if ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                <?php } else { ?>
                    <?php $class = 'col-sm-4'; ?>
                <?php } ?>
                <div class="description col-lg-7 col-md-12">
                    <h1><?php echo $heading_title; ?></h1>
                    <div class="row">
                        <div class="col-lg-8 col-md-12  pr-4">
                            <div class="row  align-items-center mb-2">
                                <div class="col-md-6">
                                    <?php if ($price) { ?>
                                        <ul class="prices list-unstyled  ">
                                            <?php if (!$special) { ?>
                                                <li>
                                                    <h2><?php echo $price; ?></h2>
                                                </li>
                                            <?php } else { ?>
                                                <li>
                                                    <span style="text-decoration: line-through;"><?php echo $price; ?></span>
                                                </li>
                                                <li>
                                                    <h2><?php echo $special; ?></h2>
                                                </li>
                                            <?php } ?>
                                            <?php if ($tax) { ?>
                                                <li><?php echo $text_tax; ?><?php echo $tax; ?></li>
                                            <?php } ?>
                                            <?php if ($points) { ?>
                                                <li><?php echo $text_points; ?><?php echo $points; ?></li>
                                            <?php } ?>
                                            <?php if ($discounts) { ?>
                                                <li>
                                                    <hr>
                                                </li>
                                                <?php foreach ($discounts as $discount) { ?>
                                                    <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                                                <?php } ?>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-default add-wishlist"
                                            title="<?php echo $button_wishlist; ?>"
                                            onclick="wishlist.add('<?php echo $product_id; ?>');">
                                        <i class="fa fa-heart"></i>
                                        <span>В избранное</span>
                                    </button>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2"
                                       id="input-quantity" class="form-control  d-none"/>
                                <input type="hidden" name="product_id" class="d-none"
                                       value="<?php echo $product_id; ?>"/>

                                <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"
                                        class="btn btn-primary btn-lg btn-block">
                                    оформить заказ
                                </button>
                            </div>

                            <?php if ($minimum > 1) { ?>
                                <div class="alert alert-info"><i
                                            class="fa fa-info-circle"></i> <?php echo $text_minimum; ?>
                                </div>
                            <?php } ?>
                            <div class="item-desc w-100">
                                <h4>Состав:</h4>
                                <?php if ($attribute_groups) { ?>
                                    <?php foreach ($attribute_groups as $attribute_group) { ?>

                                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                            <div class="d-flex align-items-center w-100">
                                                <div><?php echo $attribute['name']; ?>  <?php echo $attribute['text']; ?>
                                                    ;
                                                </div>
                                            </div>
                                        <?php } ?>

                                    <?php } ?>
                                <?php } ?>
                            </div>
                            <div class="item-desc w-100">
                                <h4>Описание:</h4>
                                <div class="content">
                                    <?php echo $description; ?>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 mt-2  ">
                            <div class="item-info">
                                <div class="d-flex align-items-center  mb-3">
                                    <img src="/catalog/view/theme/theme/images/main/product1.png" alt="иконка"/>
                                    <h4>
                                        фотоотчет
                                    </h4>
                                </div>
                                <p>
                                    Сфотографируем букет
                                    до отправления и
                                    вместе с получателем после вручения
                                </p>
                            </div>
                            <div class="item-info">
                                <div class="d-flex align-items-center  mb-3">
                                    <img src="/catalog/view/theme/theme/images/main/product2.png" alt="иконка"/>
                                    <h4>
                                        гарантия
                                    </h4>
                                </div>
                                <p>
                                    Используем только
                                    свежие цветы от
                                    лучших поставщиков
                                </p>
                            </div>
                            <div class="item-info">
                                <div class="d-flex align-items-center  mb-3">
                                    <img src="/catalog/view/theme/theme/images/main/product3.png" alt="иконка"/>
                                    <h4>
                                        доставка
                                    </h4>
                                </div>
                                <p>
                                    Доставляем по всему городу.
                                    Бесплатная доставка
                                    при заказе от 5 000р.
                                </p>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <?php if ($products) { ?>
                <h3 class="title-related">
                    Вы просматривали:
                </h3>
                <div class="row  related-list">
                    <?php $i = 0; ?>
                    <?php foreach ($products as $product) { ?>
                        <?php if ($column_left && $column_right) { ?>
                            <?php $class = 'col-xs-8 col-sm-6'; ?>
                        <?php } elseif ($column_left || $column_right) { ?>
                            <?php $class = 'col-xs-6 col-md-4'; ?>
                        <?php } else { ?>
                            <?php $class = 'col-xs-6 col-sm-3'; ?>
                        <?php } ?>
                        <li>
                            <div class="product-thumb">
                                <div class="image position-relative">
                                    <button class="add-wishlist" type="button" title="<?php echo $button_wishlist; ?>"
                                            onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                                class="fa fa-heart"></i>
                                    </button>
                                    <a href="<?php echo $product['href']; ?>">
                                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
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
                                                        <span class="price-new"><?php echo $product['special']; ?></span> <span
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
                        <?php if (($column_left && $column_right) && (($i + 1) % 2 == 0)) { ?>
                            <div class="clearfix visible-md visible-sm"></div>
                        <?php } elseif (($column_left || $column_right) && (($i + 1) % 3 == 0)) { ?>
                            <div class="clearfix visible-md"></div>
                        <?php } elseif (($i + 1) % 4 == 0) { ?>
                            <div class="clearfix visible-md"></div>
                        <?php } ?>
                        <?php $i++; ?>


                    <?php } ?>
                </div>
            <?php } ?>
            <?php if ($tags) { ?>
                <p><?php echo $text_tags; ?>
                    <?php for ($i = 0; $i < count($tags); $i++) { ?>
                        <?php if ($i < (count($tags) - 1)) { ?>
                            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                        <?php } else { ?>
                            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                        <?php } ?>
                    <?php } ?>
                </p>
            <?php } ?>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function () {
                $('#recurring-description').html('');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function () {

        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function () {
                // $('#button-cart').button('loading');
            },
            complete: function () {
                // $('#button-cart').button('reset');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('#content').parent().before('<div class="alert alert-success w-100"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    // Need to set timeout otherwise it wont update the total
                    setTimeout(function () {
                        $('#cart > button #cart-total').html(json['total'].price);
                        $('#cart > button .second .price').html(json['total'].count + 'р');
                    }, 100);

                    $('html, body').animate({ scrollTop: 0 }, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
        grecaptcha.reset();
    });

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });

    $(document).ready(function () {
        var hash = window.location.hash;
        if (hash) {
            var hashpart = hash.split('#');
            var vals = hashpart[1].split('-');
            for (i = 0; i < vals.length; i++) {
                $('#product').find('select option[value="' + vals[i] + '"]').attr('selected', true).trigger('select');
                $('#product').find('input[type="radio"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
                $('#product').find('input[type="checkbox"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
            }
        }
    })
    //--></script>
<?php echo $footer; ?>
