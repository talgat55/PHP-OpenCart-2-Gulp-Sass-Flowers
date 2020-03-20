// ---------------------------------------------------------
// !!!!!!!!!!!!!!!!!document ready!!!!!!!!!!!!!!!!!!!!!!!!!!
// ---------------------------------------------------------
jQuery(document).ready(function () {


    mapInit();
    aboutPageSlider();
    homePageCarousel();
    activeElementByClick();
    priceSlider();
    productCarousel();
    reviewShowBlock();
    closeAlertModal();
    modalAction();
    filterOnPageProducts();
    mobileMenu();
    toggleFilterMenu();
    //  mask input

    if (jQuery('#sobInput33-2, #customer_telephone').length) {
        jQuery('#sobInput33-2, #customer_telephone').mask('+0(000) 000-0000');
    }


    jQuery('.add-to-cart').click(function (e) {
        ym(57523168, 'reachGoal', 'addBasket');
        gtag('event', 'addBasket',{ 'event_category': 'button'});
    });


    // end redy function
});

jQuery(window).resize(function () {
    // homeSlider();
    // showCategotyonMobile();

});


//
// Home page Carousel  Products
//
function homePageCarousel() {
    "use strict";

    var arrowClass = '.carousel-arrows';
    var listClass = '.list-products-carousel';

    jQuery(listClass).slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
        autoplay: true
    });


    jQuery(arrowClass + ' .carousel-arrows__left-link').click(function (e) {
        e.preventDefault();
        jQuery(this).parent().parent().parent().find(listClass).slick('slickPrev');
    });


    jQuery(arrowClass + ' .carousel-arrows__right-link').click(function (e) {
        e.preventDefault();
        jQuery(this).parent().parent().parent().find(listClass).slick('slickNext');
    });

}

//
// Carousel  Products
//
function productCarousel() {
    "use strict";

    var listClass = '.related-list';

    jQuery(listClass).slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
        autoplay: true
    });


}

//
// Add active class for filter block
//
function activeElementByClick() {
    "use strict";
    var activeClass = '';
    jQuery('.filter-block .radio-input input').change(function () {
        if (this.checked) {
            jQuery(this).parent().parent().addClass('active');
            var nameItem = jQuery(this).attr('data-active');

            jQuery(this).parent().find('span').html(' ').html(nameItem);

        } else {
            var nameItemMain = jQuery(this).attr('data-main');
            jQuery(this).parent().find('span').html(' ').html(nameItemMain);
            jQuery(this).parent().parent().removeClass('active');
        }
        checkActiveInputsCats( );
    });
}

/**
 *  Check active inputs in block filter on home page
 */
function checkActiveInputsCats( ) {
    "use strict";
    var tempCat = '';
    jQuery(".filter-block .first input").each(function (index) {
        if (jQuery(this).prop("checked") === true) {
            tempCat = tempCat + ',' + jQuery(this).val();
        }
    });


    if(tempCat.length){
        var newerQuery = jQuery.query.SET('categories_custom', tempCat);

    }else{
        var newerQuery = jQuery.query.REMOVE('categories_custom');
    }

    var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + newerQuery;
    window.history.pushState({path: newurl}, '', newurl);
    ajaxProduct('home');
}

//
// Price slider
//
function priceSlider() {
    "use strict";
    var sliderId = jQuery('#slider');

    var classAjax;
    var minValue = sliderId.attr('data-min');
    var maxValue = sliderId.attr('data-max');

    if (sliderId.length) {
        sliderId.slider({
            range: true,
            min: 0,
            max: 0,
            values: [minValue, maxValue],
            step: 1,
            change: function (event, ui) {
                console.log(ui.values[0]);
                console.log(ui.values[1]);
                jQuery(this).toggleClass('active');
                var newerQuery = jQuery.query.SET('min_price_custom', ui.values[0]).SET('max_price_custom', ui.values[1]);
                var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + newerQuery;
                window.history.pushState({path: newurl}, '', newurl);

                if (jQuery('body').hasClass('common-home')) {
                    classAjax = 'home';
                } else {
                    classAjax = '';
                }
                ajaxProduct(classAjax);

            }
        })

            .slider("float", {

                handle: true,
                pips: true,
                labels: true,
                prefix: "",
                suffix: " р"

            });

        sliderId.slider("option", "min", parseInt(minValue));
        sliderId.slider("option", "max", parseInt(maxValue));
    }
}

//
// Map
//
function mapInit() {
    "use strict";

    if (jQuery('#map').length) {
        ymaps.ready(function () {
            var myMap = new ymaps.Map('map', {
                    center: [55.355408, 86.079472],
                    zoom: 15,
                    controls: ['zoomControl']
                }, {
                    // searchControlProvider: 'yandex#search'
                }),

                // Создаём макет содержимого.
                /*  MyIconContentLayout = ymaps.templateLayoutFactory.createClass(
                      '<div style="color: #FFFFFF; font-weight: bold;">$[properties.iconContent]</div>'
                  ),*/

                myPlacemark = new ymaps.Placemark([55.355408, 86.079472], {
                    id: '1'
                }, {

                    // Опции.
                    // Необходимо указать данный тип макета.
                    iconLayout: 'default#image',
                    // Своё изображение иконки метки.

                    iconImageHref: 'https://mr-buket.ru/catalog/view/theme/theme/images/main/geo.png',
                    // Размеры метки.
                    iconImageSize: [28, 38],
                    // Смещение левого верхнего угла иконки относительно
                    // её "ножки" (точки привязки).
                    iconImageOffset: [-14, -38]
                });
            myPlacemark.events.add('click', function () {

                    window.open("https://2gis.ru/kemerovo/geo/704323096959500", "_blank" );
            });

            myMap.geoObjects

                .add(myPlacemark);

            myMap.behaviors.disable('scrollZoom');
            myMap.behaviors.disable('multiTouch');


        });
    }
}

//
// About page slider
//
function aboutPageSlider() {
    "use strict";
    var listClass = jQuery('.carousel-slider');
    if (listClass.length) {
        jQuery(listClass).slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            dots: false
        });
        jQuery(' .list-arrows .left').click(function (e) {
            e.preventDefault();
            jQuery(this).parent().parent().parent().parent().find(listClass).slick('slickPrev');
        });


        jQuery(' .list-arrows .right').click(function (e) {
            e.preventDefault();
            jQuery(this).parent().parent().parent().parent().find(listClass).slick('slickNext');
        });
    }
}

//
// About page slider
//
function reviewShowBlock() {
    "use strict";
    if (jQuery('.content-item').length) {
        jQuery('.content-item .link-dropdown').click(function (e) {
            e.preventDefault();
            var contentItemWithText = jQuery(this).parent().parent().find('.ratings-item-comment div');
            var contentItem = jQuery(this).parent().parent().find('.ratings-item-comment');
            console.log(jQuery(this).hasClass('active-link'));
            if (jQuery(this).hasClass('active-link')) {
                contentItem.removeAttr("style");
                jQuery(this).removeClass('active-link');

            } else {

                jQuery(this).addClass('active-link');
                contentItem.css('height', contentItemWithText.height());
            }


        });
    }
}

//
// Modal
//
function modalAction() {
    "use strict";

    jQuery('#create-order-link a, .information-information-8 .link-order').click(function (e) {
        e.preventDefault();

        jQuery('#custom-modal, #overlay-layer').addClass('active-element');
    });

    jQuery('#overlay-layer, #custom-modal .close').click(function (e) {
        e.preventDefault();
        jQuery('#custom-modal, #overlay-layer').removeClass('active-element');
    });
}

//
// Filter on page products
//
function filterOnPageProducts() {
    "use strict";
    var mainWrapBlock = '.filter-page-wrapper';
    var bodyClass = jQuery("body");
    bodyClass.on("click", mainWrapBlock + " .lists-cats  a", function (e) {
        e.preventDefault();

        jQuery(this).toggleClass('active');
        checkActiveCats();
    });


    bodyClass.on("click", " .clear-filter", function (e) {
        e.preventDefault();
        var classAjax;
        var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname;
        window.history.pushState({path: newurl}, '', newurl);

        jQuery(".filter-block .first input").each(function (index) {
            jQuery(this).prop("checked", false);
            jQuery(this).parent().parent().removeClass('active');
        });
        if (jQuery('body').hasClass('common-home')) {
            classAjax = 'home';
        } else {
            classAjax = '';
        }
        ajaxProduct(classAjax);
    });
}


/**
 * Return list active categories filters
 *
 * @param tempCat
 */
function checkActiveCats() {
    var tempCat;
    jQuery(".lists-cats li").each(function (index) {
        if (jQuery(this).find('a').hasClass('active')) {
            tempCat = tempCat + ',' + jQuery(this).find('a').attr('data-id');
        }
    });
    console.log(tempCat);
    var newerQuery = jQuery.query.SET('categories_custom', tempCat);
    var newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + newerQuery;
    window.history.pushState({path: newurl}, '', newurl);
    ajaxProduct();
}

/**
 * Ajax , Return products by  categories and prices
 *
 * @param cat
 * @param price
 */
function ajaxProduct(page = null) {

    var pathname = window.location.href;
    console.log(pathname);

    jQuery('.wrapper-product-list ').addClass('active');
    jQuery.get(pathname, function (data) {
        jQuery('.wrapper-product-list ').removeClass('active');
        if (page === 'home') {
            var products = jQuery(data).find('.product-layout.product-list.product-list-filtered .product-item ');

            if (products.length == '0') {
                products = '<p style="line-height: 100px">Товаров по запросу не найдено</p>';
            }
            jQuery('.product-list-filtered').html(' ').append(products);


        } else {
            var products = jQuery(data).find('.product-layout .product-item ');

            if (products.length == '0') {
                products = '<p style="line-height: 100px">Товаров по запросу не найдено</p>';
            }
            jQuery('.product-layout.product-list.row').html(' ').append(products);

        }

    });
}

/**
 * Hide block alert after add item in cart
 */
function closeAlertModal() {
    "use strict";
    jQuery('body').on('click', '.alert .close', function () {
        jQuery('.alert').css('display', 'none');
    });
}

//----------------------------------
//   Mobile Menu
//------------------------------------
function mobileMenu() {
    "use strict";
    let menuClass = '#mobile-toggle';
    let mobileClass = jQuery('#mobile-block');
    let bodyClass = 'body';
    jQuery(bodyClass).on('click', menuClass, function () {
        mobileClass.toggleClass('is-active');
        jQuery(menuClass).toggleClass('is-active');
        return false;
    });
}

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};

//----------------------------------
//   Toggle Filter block
//------------------------------------
function toggleFilterMenu() {
    "use strict";

    var clickClass = '.heading-filter-block-mobile';
    var clickClassSecond = '.catalog-hover-menu';
    var bodyClass = 'body';

    jQuery(bodyClass).on('click', clickClass, function () {
        jQuery(clickClass).toggleClass('is-active');
        jQuery('.filter-block, .product-page.page-cat .filter-page-wrapper').toggleClass('is-active');
        return false;
    });

    jQuery(bodyClass).on('click', clickClassSecond + ' .show-cat-link', function () {
        jQuery(clickClassSecond).toggleClass('is-active');
        return false;
    });

}


