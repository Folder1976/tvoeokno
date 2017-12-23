<?php
class ControllerProductCalculator extends Controller {
	public function index() {
		
		//==============================================
		$this->load->model('catalog/attribute2');
		$this->load->model('catalog/attribute_group2');
		$lists = $this->model_catalog_attribute2->getAttributes();
		$groups = $this->model_catalog_attribute_group2->getAttributeGroups();
		
		$group_list = array();
		foreach($lists as $index => $list){
			if(!isset($group_list[$list['attribute_group_id']]['name'])){
				$group_list[$list['attribute_group_id']] = $groups[$list['attribute_group_id']];
			}
			$group_list[$list['attribute_group_id']]['list'][$list['attribute_id']] = $list;
		}
		
		$data['group_list'] = $group_list;
		//==============================================
		
		$this->load->language('product/calculator');

		$this->load->model('catalog/calculator');
		
		$this->load->model('tool/image');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_index'] = $this->language->get('text_index');
		$data['text_empty'] = $this->language->get('text_empty');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_brand'),
			'href' => '/online_windows_calculator'
		);

		/*
		$data['categories'] = array();

		$results = $this->model_catalog_manufacturer->getManufacturers();

		foreach ($results as $result) {
			$name = $result['name'];

			if (is_numeric(utf8_substr($name, 0, 1))) {
				$key = '0 - 9';
			} else {
				$key = utf8_substr(utf8_strtoupper($name), 0, 1);
			}

			if (!isset($data['categories'][$key])) {
				$data['categories'][$key]['name'] = $key;
			}

			$data['categories'][$key]['manufacturer'][] = array(
				'name' => $name,
				'short_description' => $result['short_description'],
				'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id'])
			);
		}
		*/
		
		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('product/calculator', $data));
	}

}
