<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$this->language->load('blog/blog');
		$this->load->model('blog/blog');
		$_GET['blog_id'] = 80;
		$data['comment_blog'] = $this->model_blog_blog->getBlog(80);
		$data['footer_hi_text'] = $this->model_blog_blog->getBlog(91);
		$data['language_id'] = (int)$this->config->get('config_language_id');
		$results = $this->model_blog_blog->getCommentsByBlogId(80, 0, 10);

		foreach ($results as $result) {
        		$data['comments'][] = array(
        			'name'     => $result['name'],
					'email'     => $result['email'],
						'adress'     => $result['adress'],
					'comment'       => strip_tags($result['comment']),
        			'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
        		);
      		}
		
		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules(1, 'content_top');

		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data = $this->load->controller('extension/module/' . $part[0]);

				if ($module_data) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);
		
				if ($setting_info && $setting_info['status']) {
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);

					if ($output) {
						$data['modules'][$part[0].'-'.$part[1]] = $output;
					}
				}
			}
		}
	
		$this->load->model('design/banner');
		$data['banner_sertificate'] = $this->model_design_banner->getBanner(9);
	
		$this->load->model('design/banner_home');
		$data['banner_home'] = $this->model_design_banner_home->getBanners();
	
		$this->load->model('blog/blog');
 		$this->load->model('blog/blog_category');
 		
 		$res = $this->model_blog_blog_category->getBlogCategories();
 		
 		foreach($res as $index => $row){
 			$data['blogs'][$row['blog_category_id']] = $row;
 			$data['blogs'][$row['blog_category_id']]['blogs'] = $this->model_blog_blog->getBlogsByBlogCategoryId($row['blog_category_id']);
 		}
 		
		$_GET['blog_id'] = 80;
 		$data['comment_blog'] = $this->model_blog_blog->getBlog(80);
 		
 	
	
 		$this->load->model('catalog/manufacturer');
 		$data['manufacturers'] = array();// $this->model_catalog_manufacturer->getManufacturers();
		$data['Categories_manuf'] = $this->model_catalog_category->getBrandCategories();
		
		
		$filter_data = array(
				'main_page_tab' => 1
			);
		
		$this->load->model('catalog/product');
		$result = $this->model_catalog_product->getProducts($filter_data);
		
		$data['categorys'] = array();
		
		foreach($result as $index => $row){
			$data['categorys'][$row['main_page_tab']] = $row;
			$data['categorys'][$row['main_page_tab']]['product_tables'] = $this->model_catalog_product->getProductTables($row['product_id']);
			$data['categorys'][$row['main_page_tab']]['addons'] = $this->model_catalog_product->getProductAttribute4s($row['product_id']);
			
			if ($row['image']) {
				$data['categorys'][$row['main_page_tab']]['thumb'] = $this->model_tool_image->resize($row['image'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
			} else {
				$data['categorys'][$row['main_page_tab']]['thumb'] = '';
			}
			
		}
		
		/*
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
		
			$data['products'] = array();
			$data['categorys'] = array();

			

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			
			foreach ($results as $result) {
			
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

				$data['categorys'][$result['category_id']]['products'][] = $result['product_id'];
				
				$options = array();

				foreach ($this->model_catalog_product->getProductOptions($result['product_id']) as $option) {
					$product_option_value_data = array();
	
					foreach ($option['product_option_value'] as $option_value) {
						if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
							if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
								$price = $this->currency->format($this->tax->calculate($option_value['price'], $result['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
							} else {
								$price = false;
							}
	
							$product_option_value_data[] = array(
								'product_option_value_id' => $option_value['product_option_value_id'],
								'option_value_id'         => $option_value['option_value_id'],
								'name'                    => $option_value['name'],
								'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
								'price'                   => $price,
								'price_prefix'            => $option_value['price_prefix']
							);
						}
					}
	
					$options[] = array(
						'product_option_id'    => $option['product_option_id'],
						'product_option_value' => $product_option_value_data,
						'option_id'            => $option['option_id'],
						'name'                 => $option['name'],
						'type'                 => $option['type'],
						'value'                => $option['value'],
						'required'             => $option['required']
					);
				}
				
				$data['products'][$result['product_id']] = array(
					'product_id'  => $result['product_id'],
					'option'		=> $options,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'] . '')
				);
			}

			foreach($data['categorys'] as $_category_id => $row){
				
				$data['categorys'][$_category_id] = $this->model_catalog_category->getCategory($_category_id);
				$data['categorys'][$_category_id]['products'] = $row['products'];
				
			}
		*/
		
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
