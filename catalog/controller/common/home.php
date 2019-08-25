<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
        $this->load->model('design/banner');
        $this->load->model('tool/image');
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
//        $bannerTwo = $this->model_design_banner->getBanner('8');

        if ($this->request->server['HTTPS']) {
            $image_path = $this->config->get('config_ssl') . 'image/';
        } else {
            $image_path = $this->config->get('config_url') . 'image/';
        }

        $data['bannerfirst']['image'] =  $this->model_tool_image->resize($bannerFirst[0]['banner_image_id'],'1920', '540');
        $data['bannerfirst']['title'] =  htmlspecialchars_decode($bannerFirst[0]['title']);
        $data['bannerfirst']['status'] =  $bannerFirst[0]['status'];
        $data['bannerfirst']['link'] =  $bannerFirst[0]['link'];
        $data['bannerfirst']['url'] =   $image_path. $bannerFirst[0]['image']  ;


        $data['bannermiddle']['image'] =  $this->model_tool_image->resize($bannerMiddle[0]['banner_image_id'],'1920', '540');
        $data['bannermiddle']['title'] =  htmlspecialchars_decode($bannerMiddle[0]['title']);
        $data['bannermiddle']['status'] =  $bannerMiddle[0]['status'];
        $data['bannermiddle']['link'] =  $bannerMiddle[0]['link'];
        $data['bannermiddle']['name'] =  $bannerMiddle[0]['name'];
        $data['bannermiddle']['url'] =   $image_path. $bannerMiddle[0]['image']  ;


        $data['bannerbottom']['image'] =  $this->model_tool_image->resize($bannerBottom[0]['banner_image_id'],'1920', '540');
        $data['bannerbottom']['title'] =  htmlspecialchars_decode($bannerBottom[0]['title']);
        $data['bannerbottom']['status'] =  $bannerBottom[0]['status'];
        $data['bannerbottom']['link'] =  $bannerBottom[0]['link'];
        $data['bannerbottom']['name'] =  $bannerBottom[0]['name'];
        $data['bannerbottom']['url'] =   $image_path. $bannerBottom[0]['image']  ;



        $this->response->setOutput($this->load->view('common/home', $data));
	}
}
