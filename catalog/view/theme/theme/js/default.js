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
    //  mask input

    if (jQuery('#sobInput33-2').length) {
        jQuery('#sobInput33-2').mask('+0(000) 000-0000');
    }

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
        } else {
            jQuery(this).parent().parent().removeClass('active');
        }

    });


}

//
// Price slider
//
function priceSlider() {
    "use strict";
    var sliderId = jQuery('#slider');
    if (sliderId.length) {
        sliderId.slider({

            range: true,
            min: 1000,
            max: 12000,
            step: 1,
            change: function (event, ui) {
                    console.log(ui.values[0]);
                    console.log(ui.values[1]);
                var tempCat = '?categories_custom=';
                jQuery(this).toggleClass('active');
                checkActiveCats(tempCat);

                ajaxProduct('', '?min_price_custom='+ui.values[0] +'&max_price_custom='+ui.values[1]);

            }
        })

            .slider("float", {

                handle: true,
                pips: true,
                labels: true,
                prefix: "",
                suffix: " р"

            });
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

                    iconImageHref: 'http://buket.lightxdesign.ru/catalog/view/theme/theme/images/main/geo.png',
                    // Размеры метки.
                    iconImageSize: [28, 38],
                    // Смещение левого верхнего угла иконки относительно
                    // её "ножки" (точки привязки).
                    iconImageOffset: [-14, -38]
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
    jQuery("body").on("click", mainWrapBlock + " .lists-cats  a", function (e) {
        e.preventDefault();
        var tempCat = '?categories_custom=';
        jQuery(this).toggleClass('active');
        checkActiveCats(tempCat);
    });
}

/**
 * Return list active categories filters
 *
 * @param tempCat
 */
function  checkActiveCats(tempCat){
    jQuery(".lists-cats li").each(function (index) {
        if (jQuery(this).find('a').hasClass('active')) {
            tempCat = tempCat + ',' + jQuery(this).find('a').attr('data-id');
        }
    });
    console.log(tempCat);
    ajaxProduct(tempCat);
}

/**
 * Ajax , Return products by  categories and prices
 *
 * @param cat
 * @param price
 */
function ajaxProduct(cat = '', price = '') {
    var pathname = window.location.pathname;
    jQuery.get(pathname + cat + price, function (data) {
        var products = jQuery(data).find('.product-layout .product-item ');
        jQuery('.product-layout.product-list.row').html(' ').append(products);
    });
}

/**
 * Hide block alert after add item in cart
 */
function closeAlertModal(){
    "use strict";
    jQuery('body').on('click', '.alert .close', function() {
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
