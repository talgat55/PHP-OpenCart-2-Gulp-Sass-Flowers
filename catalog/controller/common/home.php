<?php

class ControllerCommonHome extends Controller
{
    public function index()
    {
        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));
        $this->load->model('design/banner');
        $this->load->model('tool/image');
        $this->load->model('catalog/product');

        // yandex map
        $this->document->addScript('https://api-maps.yandex.ru/2.1/?lang=ru_RU');

        $this->document->addScript('/catalog/view/theme/theme/js/jquery-ui.min.js');
        $this->document->addScript('https://rawgit.com/simeydotme/jQuery-ui-Slider-Pips/master/src/js/jquery-ui-slider-pips.js');
        $this->document->addScript('/catalog/view/theme/theme/js/jquery.ui.touch-punch.min.js');
//
        $this->document->addStyle('/catalog/view/theme/theme/css/jqueryui.min.css');
        $this->document->addStyle('/catalog/view/theme/theme/css/jquery-ui-slider-pips.css');
        if (isset($this->request->get['route'])) {
            $this->document->addLink($this->config->get('config_url'), 'canonical');
        }

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');


        $bannerFirst = $this->model_design_banner->getBanner('9');
        $bannerMiddle = $this->model_design_banner->getBanner('10');
        $bannerBottom = $this->model_design_banner->getBanner('11');

        $bannerOne = $this->model_design_banner->getBanner('6');
        $bannerTwo = $this->model_design_banner->getBanner('8');



        if ($this->request->server['HTTPS']) {
            $image_path = $this->config->get('config_ssl') . 'image/';
        } else {
            $image_path = $this->config->get('config_url') . 'image/';
        }

        $data['bannerfirst']['image'] = $this->model_tool_image->resize($bannerFirst[0]['banner_image_id'], '1920', '540');
        $data['bannerfirst']['title'] = htmlspecialchars_decode($bannerFirst[0]['title']);
        $data['bannerfirst']['status'] = $bannerFirst[0]['status'];
        $data['bannerfirst']['link'] = $bannerFirst[0]['link'];
        $data['bannerfirst']['url'] = $image_path . $bannerFirst[0]['image'];

        $data['bannermiddle']['image'] = $this->model_tool_image->resize($bannerMiddle[0]['banner_image_id'], '1920', '540');
        $data['bannermiddle']['title'] = htmlspecialchars_decode($bannerMiddle[0]['title']);
        $data['bannermiddle']['status'] = $bannerMiddle[0]['status'];
        $data['bannermiddle']['link'] = $bannerMiddle[0]['link'];
        $data['bannermiddle']['name'] = $bannerMiddle[0]['name'];
        $data['bannermiddle']['url'] = $image_path . $bannerMiddle[0]['image'];

        $data['bannerbottom']['image'] = $this->model_tool_image->resize($bannerBottom[0]['banner_image_id'], '1920', '540');
        $data['bannerbottom']['title'] = htmlspecialchars_decode($bannerBottom[0]['title']);
        $data['bannerbottom']['status'] = $bannerBottom[0]['status'];
        $data['bannerbottom']['link'] = $bannerBottom[0]['link'];
        $data['bannerbottom']['name'] = $bannerBottom[0]['name'];
        $data['bannerbottom']['url'] = $image_path . $bannerBottom[0]['image'];

        $data['bannerone']['image'] = $this->model_tool_image->resize($bannerOne[0]['banner_image_id'], '557', '139');
        $data['bannerone']['title'] = $bannerOne[0]['title'];
        $data['bannerone']['status'] = $bannerOne[0]['status'];
        $data['bannerone']['link'] = $bannerOne[0]['link'];
        $data['bannerone']['url'] = $bannerOne[0]['image'] ? $this->model_tool_image->resize($bannerOne[0]['image'], '557', '139') : '';

        $data['bannertwo']['image'] = $this->model_tool_image->resize($bannerTwo[0]['banner_image_id'], '557', '139');
        $data['bannertwo']['title'] = $bannerTwo[0]['title'];
        $data['bannertwo']['status'] = $bannerTwo[0]['status'];
        $data['bannertwo']['link'] = $bannerTwo[0]['link'];
        $data['bannertwo']['url'] = $bannerTwo[0]['image'] ? $this->model_tool_image->resize($bannerTwo[0]['image'], '557', '139') : '';

        //
        //   Products
        //
        $url = '';

        if (isset($this->request->get['filter'])) {
            $url .= '&filter=' . $this->request->get['filter'];
        }

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['limit'])) {
            $url .= '&limit=' . $this->request->get['limit'];
        }
        // pack
        $data['products_pack'] = array();

        $filter_data_pack = array(
            'filter_category_id' => '17',
            'filter_filter' => '',
            'sort' => '',
            'order' => '',
            'start' => '0',
            'limit' => '8'
        );


        $results_pack = $this->model_catalog_product->getProducts($filter_data_pack);
//        $attributes = $this->model_catalog_product->getProductAttributes(50);
        $attributes = $this->model_catalog_product->getAttributes();
//
        $newArrayAttributes = array_filter($attributes, function ($var) {
            return ($var['attribute_group'] == 'Вид цветов');
        });
        $data['filter_attributes'] = $newArrayAttributes;
//        var_dump($newArrayAttributes);
        foreach ($results_pack as $result) {
            if ($result['image']) {
                $image = $image_path . $result['image'];

            } else {
                $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $price = false;
            }

            if ((float)$result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $special = false;
            }

            if ($this->config->get('config_tax')) {
                $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
            } else {
                $tax = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = (int)$result['rating'];
            } else {
                $rating = false;
            }

            $data['products_pack'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $image,
                'name' => $result['name'],
                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                'price' => $price,
                'special' => $special,
                'tax' => $tax,
                'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                'rating' => $rating,
                'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
            );
        }


        /////
        $data['products_boxes'] = array();

        $filter_data_boxes = array(
            'filter_category_id' => '24',
            'filter_filter' => '',
            'sort' => '',
            'order' => '',
            'start' => '0',
            'limit' => '8'
        );
        $results_boxes = $this->model_catalog_product->getProducts($filter_data_boxes);

        foreach ($results_boxes as $result) {
            if ($result['image']) {
                $image = $image_path . $result['image'];

            } else {
                $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $price = false;
            }

            if ((float)$result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $special = false;
            }

            if ($this->config->get('config_tax')) {
                $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
            } else {
                $tax = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = (int)$result['rating'];
            } else {
                $rating = false;
            }

            $data['products_boxes'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $image,
                'name' => $result['name'],
                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                'price' => $price,
                'special' => $special,
                'tax' => $tax,
                'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                'rating' => $rating,
                'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
            );
        }

        /////
        $data['products_fruits'] = array();

        $filter_data_fruits = array(
            'filter_category_id' => '59',
            'filter_filter' => '',
            'sort' => '',
            'order' => '',
            'start' => '0',
            'limit' => '8'
        );
        $results_boxes = $this->model_catalog_product->getProducts($filter_data_fruits);

        foreach ($results_boxes as $result) {
            if ($result['image']) {
//                $image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
                $image = $image_path . $result['image'];

            } else {
                $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $price = false;
            }

            if ((float)$result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $special = false;
            }

            if ($this->config->get('config_tax')) {
                $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
            } else {
                $tax = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = (int)$result['rating'];
            } else {
                $rating = false;
            }

            $data['products_fruits'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $image,
                'name' => $result['name'],
                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                'price' => $price,
                'special' => $special,
                'tax' => $tax,
                'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                'rating' => $rating,
                'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
            );
        }

        /////
        $data['products_toys'] = array();

        $filter_data_toys = array(
            'filter_category_id' => '60',
            'filter_filter' => '',
            'sort' => '',
            'order' => '',
            'start' => '0',
            'limit' => '8'
        );
        $results_toys = $this->model_catalog_product->getProducts($filter_data_toys);

        foreach ($results_toys as $result) {
            if ($result['image']) {
//                $image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
                $image = $image_path . $result['image'];
            } else {
                $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $price = false;
            }

            if ((float)$result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $special = false;
            }

            if ($this->config->get('config_tax')) {
                $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
            } else {
                $tax = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = (int)$result['rating'];
            } else {
                $rating = false;
            }

            $data['products_toys'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $image,
                'name' => $result['name'],
                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                'price' => $price,
                'special' => $special,
                'tax' => $tax,
                'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                'rating' => $rating,
                'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
            );
        }


        /////
        ///
        ///
        $data['products_filter'] = array();
        if (isset($this->request->get['categories_custom'])) {
            if (!empty($this->request->get['categories_custom'])) {
                // delete undefined
                $redyStr = str_replace('undefined', '', $this->request->get['categories_custom']);

                $tempC = substr($redyStr, 1);
                $filter_cat = $tempC;
            } else {
                $filter_cat = '';
            }
            $results_filter = $this->model_catalog_product->getProductsByAttributeAndPrice($filter_cat);


        } else {
            $this->load->model('catalog/category');
            $categories = $this->model_catalog_category->getCategories(0);
            $newcat = [];
            foreach ($categories as $cat){
                array_push($newcat,$cat['category_id'] );
            }
            $redyCat = implode(',', $newcat);
            if (isset($this->request->get['min_price_custom']) || isset($this->request->get['max_price_custom'])) {
                $filter_data_filter = array(
                    'filter_category_id' => $redyCat,
                    'filter_filter' => '',
                    'sort' => '',
                    'order' => '',
                    'start' => '0',
                    'limit' => '100'
                );
            }else{
                $filter_data_filter = array(
                    'filter_category_id' => '17',
                    'filter_filter' => '',
                    'sort' => '',
                    'order' => '',
                    'start' => '0',
                    'limit' => '8'
                );
            }

            $results_filter = $this->model_catalog_product->getProducts($filter_data_filter);
        }


        if (isset($this->request->get['min_price_custom']) || isset($this->request->get['max_price_custom'])) {

            if (isset($this->request->get['min_price_custom'])) {
                $min_custom = $this->request->get['min_price_custom'];
            } else {
                $min_custom = '0';
            }

            if (isset($this->request->get['max_price_custom'])) {
                $max_custom = $this->request->get['max_price_custom'];
            } else {
                $max_custom = '99999999999';
            }
            $price_filter = [
                'min' => $min_custom,
                'max' => $max_custom
            ];

        } else {
            $price_filter = '';
        }


        foreach ($results_filter as $result) {
            if ($result['image']) {
//                $image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
                $image = $image_path . $result['image'];
            } else {
                $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $price = false;
            }

            if ((float)$result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $special = false;
            }

            if ($this->config->get('config_tax')) {
                $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
            } else {
                $tax = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = (int)$result['rating'];
            } else {
                $rating = false;
            }
            if (!empty($price_filter)) {


                if ( intval($result['price']) >= $price_filter['min'] &&  intval($result['price']) <= $price_filter['max']) {
                    $data['products_filter'][] = array(
                        'product_id' => $result['product_id'],
                        'thumb' => $image,
                        'name' => $result['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                        'price' => $price,
                        'special' => $special,
                        'tax' => $tax,
                        'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                        'rating' => $rating,
                        'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
                    );
                }
            } else {
                $data['products_filter'][] = array(
                    'product_id' => $result['product_id'],
                    'thumb' => $image,
                    'name' => $result['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                    'price' => $price,
                    'special' => $special,
                    'tax' => $tax,
                    'minimum' => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                    'rating' => $rating,
                    'href' => $this->url->link('product/product', 'path=' . '&product_id=' . $result['product_id'] . $url)
                );
            }
        }

        $minPrice = $this->model_catalog_product->minPriceProducts();
        $maxPrice = $this->model_catalog_product->maxPriceProducts();


        $data['minPrice'] = intval($minPrice);
        $data['maxPrice'] = intval($maxPrice);


        $this->response->setOutput($this->load->view('common/home', $data));
    }
}
