<?php echo $header; ?>
    <div class="page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <?php if ($success) { ?>
                        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                        </div>
                    <?php } ?>
                    <div class="row">

                        <div id="content" class="col-sm-12 wishlist-page">
                            <h1>
                                <i class="fa fa-heart"></i>
                                избранное
                            </h1>

                            <?php if ($products) { ?>
                                <ul class="product-layout product-list row">
                                    <?php foreach ($products as $product) { ?>
                                        <li class=" product-item  col-lg-3 col-md-6  col-xs-12">
                                            <div class="product-thumb">
                                                <div class="image position-relative">
                                                    <button class="add-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"
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
                            <?php } else { ?>
                                <p class="mb-5"><?php echo $text_empty; ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>