// ---------------------------------------------------------
// !!!!!!!!!!!!!!!!!document ready!!!!!!!!!!!!!!!!!!!!!!!!!!
// ---------------------------------------------------------
jQuery(document).ready(function () {


    mapInit();

    homePageCarousel();
    activeElementByClick();
    priceSlider();
    productCarousel();


    // jQuery('a').click(function (e) {
    //     e.preventDefault();
    // });

    /*
    * Match height
    */
    // var product_item = jQuery('.latest-block .product-layout, .products-row .product-layout');
    // if (product_item.length) {
    //
    //     product_item.matchHeight();
    //
    // }


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
    jQuery('.filter-block .radio-input input').change(function() {
        if(this.checked) {
            jQuery(this ).parent().parent().addClass('active');
        }else{
            jQuery(this ).parent().parent().removeClass('active');
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
            step: 1

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

