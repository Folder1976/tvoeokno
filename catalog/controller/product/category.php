<?php
class ControllerProductCategory extends Controller {
	public function index() {
		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		
		$data['breadcrumbs1'] = array();

		$data['breadcrumbs1'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		
		$categories = $this->model_catalog_category->getCategoriPath($category_id);

		
		foreach($categories as $row){
			$category_info = $this->model_catalog_category->getCategory($row['path_id']);
			
			if ($category_info) {
				if($row['path_id'] != $category_id){
					$data['breadcrumbs1'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $row['path_id'] . $url)
					);
				}
			}
		}
		
		$data['breadcrumbs'] = $data['breadcrumbs1'];
		
		$category_info = $this->model_catalog_category->getCategory($category_id);

		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			$data['heading_title'] = $category_info['name'];
			
			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = '';
			}
			
			if($category_info['tpl'] == 'category_brend'){
				$filter_data = array(
					'main_page_tab' => 1
				);
			
				$this->load->model('catalog/product');
				$result = $this->model_catalog_product->getProducts($filter_data);
				
				$data['tab_categorys'] = array();
		
				foreach($result as $index => $row){
					$data['tab_categorys'][$row['main_page_tab']] = $row;
					$data['tab_categorys'][$row['main_page_tab']]['product_tables'] = $this->model_catalog_product->getProductTables($row['product_id']);
					$data['tab_categorys'][$row['main_page_tab']]['addons'] = $this->model_catalog_product->getProductAttribute4s($row['product_id']);
					
					if ($row['image']) {
						$data['tab_categorys'][$row['main_page_tab']]['thumb'] = $this->model_tool_image->resize($row['image'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
					} else {
						$data['tab_categorys'][$row['main_page_tab']]['thumb'] = '';
					}
					
				}
			}
	
			
			$data['language_id'] = (int)$this->config->get('config_language_id');
			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['short_description'] = $data['description1'] = html_entity_decode($category_info['description1'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			
			$data['short_description'] = str_replace('elFinder-master/files/','admin/elFinder-master/files/',$data['short_description']);
			$data['description'] = str_replace('elFinder-master/files/','admin/elFinder-master/files/',$data['description']);
			$data['description1'] = str_replace('elFinder-master/files/','admin/elFinder-master/files/',$data['description1']);
			
			$data['image1'] = $category_info['image1'];
			$data['tab1'] = html_entity_decode($category_info['tab1'], ENT_QUOTES, 'UTF-8');
			$data['tab_description1'] = html_entity_decode($category_info['tab_description1'], ENT_QUOTES, 'UTF-8');

			$data['image2'] = $category_info['image2'];
			$data['tab2'] = html_entity_decode($category_info['tab2'], ENT_QUOTES, 'UTF-8');
			$data['tab_description2'] = html_entity_decode($category_info['tab_description2'], ENT_QUOTES, 'UTF-8');

			$data['image3'] = $category_info['image3'];
			$data['tab3'] = html_entity_decode($category_info['tab3'], ENT_QUOTES, 'UTF-8');
			$data['tab_description3'] = html_entity_decode($category_info['tab_description3'], ENT_QUOTES, 'UTF-8');


			
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

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();
			$data['categorys'] = array();

			$filter_data = array(
				'filter_sub_category'=>true,
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);


			$results = $this->model_catalog_product->getProducts($filter_data);

			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
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
				
				if(!$price AND $tax) $price = $tax;
				
				$data['products'][$result['product_id']] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'option'		=> $options,
					'name'        => $result['name'],
					'alt'        => $result['alt'],
					'title'        => $result['title'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'reviews'		=> sprintf($this->language->get('text_reviews'), $result['reviews']),
					'fastorder'     => $this->load->controller('product/fastorder', $product_info = $this->model_catalog_product->getProduct( isset($result['product_id']) ? $result['product_id'] :'' )), // FastOrder
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			
			
			
			
			foreach($data['categorys'] as $_category_id => $row){
				
				$data['categorys'][$_category_id] = $this->model_catalog_category->getCategory($_category_id);
				$data['categorys'][$_category_id]['products'] = $row['products'];
				
			}
			
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);

			
			//Добавление галереи
			$this->load->model('design/banner');
			$banners_names = $this->model_design_banner->getBannerNames();
			$banner_name = '';
			$banner_id = 0;
			
			$banner_name1 = '';
			$banner_id1 = 0;
			
			$ban_name1 = '';
			$ban_id1 = 0;
			
			$short_banner_name = '';
			$short_banner_id = 0;
			
			$tab_1banner_name = '';
			$tab_1banner_id = 0;
			
			$tab_2banner_name = '';
			$tab_2banner_id = 0;
			
			$tab_3banner_name = '';
			$tab_3banner_id = 0;
			
			foreach($banners_names as $row){
				if(strpos($data['description'], '[G]'.$row['name'].'[G]') !== false){
					$banner_name = $row['name'];
					$banner_id = $row['banner_id'];
				}
				
				if(strpos($data['description1'], '[G]'.$row['name'].'[G]') !== false){
					$banner_name1 = $row['name'];
					$banner_id1 = $row['banner_id'];
				}
					
				if(strpos($data['description'], '[B]'.$row['name'].'[B]') !== false){
					$ban_name1 = $row['name'];
					$ban_id1 = $row['banner_id'];
				}
				
				if(strpos($data['short_description'], '[G]'.$row['name'].'[G]') !== false){
					$short_banner_name = $row['name'];
					$short_banner_id = $row['banner_id'];
				}
				
				if(strpos($data['tab_description1'], '[G]'.$row['name'].'[G]') !== false){
					$tab_1banner_name = $row['name'];
					$tab_1banner_id = $row['banner_id'];
				}
				
				if(strpos($data['tab_description2'], '[G]'.$row['name'].'[G]') !== false){
					$tab_2banner_name = $row['name'];
					$tab_2banner_id = $row['banner_id'];
				}
				
				if(strpos($data['tab_description3'], '[G]'.$row['name'].'[G]') !== false){
					$tab_3banner_name = $row['name'];
					$tab_3banner_id = $row['banner_id'];
				}
				
			}

	
			if($banner_id > 0){
				$banners = $this->model_design_banner->getBanner($banner_id);
				
				$html = '<div id="nanoGallery3">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['description'] = str_replace('[G]'.$banner_name.'[G]', $html, $data['description']);
			}
			
			
			if($ban_id1 > 0){
				$banners = $this->model_design_banner->getBanner($ban_id1);
				
				$html = '<div class="main-slider owl-carousel" style="width:100%;text-align:center;">';
					foreach($banners as $banner){
						
						$html .= '<a href="'.$banner['link'].'" target="_blank">
								<div class="item1" ><div class="container-fluid1"></div>
									<img src="/image/'.$banner['image'].'">
								</div></a>';
						//$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>
				<style>
				
				@media (max-width: 2000px){
						.main-slider {
							height: 432px;
						}
						}
				
				@media (max-width: 1600px){
						.main-slider {
							margin-top: 5px;
						}
						}
				@media (max-width: 1400px){
						.main-slider {
							height: 370px;
						}
						}
				@media (max-width: 1200px){
						.main-slider {
							height: 300px;
						}
						}
				@media (max-width: 950px){
						.main-slider {
							height: 250px;
						}
						}
				@media (max-width: 450px){
						.main-slider {
							height: 200px;
						}
						}
				</style>
				
				';
				
				$data['description'] = str_replace('[B]'.$ban_name1.'[B]', $html, $data['description']);
			}
			
			if($banner_id1 > 0){
				$banners = $this->model_design_banner->getBanner($banner_id1);
				
				$html = '<div id="nanoGallery31" style="">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['description1'] = str_replace('[G]'.$banner_name1.'[G]', $html, $data['description1']);
			}
			
			if($short_banner_id > 0){
				$banners = $this->model_design_banner->getBanner($short_banner_id);
				
				$html = '<div id="nanoGallery32">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['short_description'] = str_replace('[G]'.$short_banner_name.'[G]', $html, $data['short_description']);
			}
			
			if($tab_1banner_id > 0){
				$banners = $this->model_design_banner->getBanner($tab_1banner_id);
				
				$html = '<div id="nanoGallery33">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['tab_description1'] = str_replace('[G]'.$tab_1banner_name.'[G]', $html, $data['tab_description1']);
			}
			
			if($tab_2banner_id > 0){
				$banners = $this->model_design_banner->getBanner($tab_2banner_id);
				
				$html = '<div id="nanoGallery34">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['tab_description2'] = str_replace('[G]'.$tab_2banner_name.'[G]', $html, $data['tab_description2']);
			}
			
			if($tab_3banner_id > 0){
				$banners = $this->model_design_banner->getBanner($tab_3banner_id);
				
				$html = '<div id="nanoGallery35">';
					foreach($banners as $banner){
						$html .= '<a href="'.$banner['image'].'" data-ngthumb="'.$banner['image'].'" data-ngdesc="'.$banner['title'].'">'.$banner['title'].'</a>';
					}
				$html .= '</div>';
				
				$data['tab_description3'] = str_replace('[G]'.$tab_3banner_name.'[G]', $html, $data['tab_description3']);
			}
			
			
			
			
			//******

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

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get($this->config->get('config_theme') . '_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

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

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');


			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), true), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), true), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if(isset($result['product_id'])){
				$data['fastorder'] = $this->load->controller('product/fastorder', $product_info = $this->model_catalog_product->getProduct($result['product_id'])); // FastOrder
			}
			
			
			if(isset($this->request->get['all'])){
				$this->response->setOutput($this->load->view('product/category2', $data));	
			}else{
				
				
				if($category_info['tpl'] != ''){
					$this->response->setOutput($this->load->view('product/'.$category_info['tpl'], $data));
				}else{
					$this->response->setOutput($this->load->view('product/category', $data));
				}
				
				//$this->response->setOutput($this->load->view('product/category', $data));	
			}
			
			
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}
