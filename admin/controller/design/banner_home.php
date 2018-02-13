<?php
class ControllerDesignBannerHome extends Controller { 
	private $error = array();

	public function index() {
		$this->load->language('design/banner_home');

		$this->document->setTitle($this->language->get('heading_title'));
		 
		$this->load->model('design/banner_home');

		$this->getList();
	}

	public function insert() {
		$this->load->language('design/banner_home');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/banner_home');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_design_banner_home->addBanner($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->response->redirect($this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL')); 
		}

		$this->getForm();
	}

	public function update() {
		$this->load->language('design/banner_home');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/banner_home');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_design_banner_home->editBanner($this->request->get['banner_id'], $this->request->post);
			
			if (isset($this->request->post['selected'])) {
				if($this->request->post['set_as'] == 'delete'){
					foreach ($this->request->post['selected'] as $blog_comment_id) {
						$this->model_design_banner_home->deleteComments($blog_comment_id);
					}
				}elseif($this->request->post['set_as'] == 'disabled'){
					foreach ($this->request->post['selected'] as $blog_comment_id) {
						$this->model_design_banner_home->disableComments($blog_comment_id);
					}
				}elseif($this->request->post['set_as'] == 'enabled'){
					foreach ($this->request->post['selected'] as $blog_comment_id) {
						$this->model_design_banner_home->enableComments($blog_comment_id);
					}
				}
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->response->redirect($this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL')); 
		}

		$this->getForm();
	}
 
	public function delete() {
		$this->load->language('design/banner_home');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/banner_home');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $banner_id) {
				$this->model_design_banner_home->deleteBanner($banner_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->response->redirect($this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL')); 
		}

		$this->getList();
	}

	private function getList() {
		$url = "";
		
		
		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL')
   		);
							
		$data['add'] = $this->url->link('design/banner_home/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('design/banner_home/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'i.date_added';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
		}
		
		$url = '';
			
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

  				

		$data['blogs'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);
		
		$blog_total = $this->model_design_banner_home->getTotalBanners();
	
		$results = $this->model_design_banner_home->getBanners($filter_data);
 
		foreach ($results as $result) {
									
			$data['banners'][] = array(
				'banner_id' => $result['banner_id'],
				'title'      => $result['h1'],
				'date'      => $result['date'],
				'sort_order' => $result['sort_order'],
				'status' => $result['status'],
				'selected'   => isset($this->request->post['selected']) && in_array($result['banner_id'], $this->request->post['selected']),
				'edit'     => $this->url->link('design/banner_home/update', 'token=' . $this->session->data['token'] . '&banner_id=' . $result['banner_id'] . $url, 'SSL')
			);
		}	
	
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_no_results'] = $this->language->get('text_no_results');

		$data['column_title'] = $this->language->get('column_title');
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_comments'] = $this->language->get('column_comments');
		$data['column_count_read'] = $this->language->get('column_count_read');
		$data['column_sort_order'] = $this->language->get('column_sort_order');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_action'] = $this->language->get('column_action');
		$data['text_confirm'] = $this->language->get('text_confirm');		
		
		$data['button_add'] = $this->language->get('button_add');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');
		
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
 
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['sort_title'] = $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . '&sort=id.title' . $url, 'SSL');
		$data['sort_sort_order'] = $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . '&sort=i.sort_order' . $url, 'SSL');
		$data['sort_date_added'] = $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . '&sort=i.date_added' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $blog_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
					
		$data['pagination'] = $pagination->render();
		
		$data['results'] = sprintf($this->language->get('text_pagination'), ($blog_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($blog_total - $this->config->get('config_limit_admin'))) ? $blog_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $blog_total, ceil($blog_total / $this->config->get('config_limit_admin')));
		
		$data['sort'] = $sort;
		$data['order'] = $order;
		
		
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('design/banner_home_list.tpl', $data));  
	}

	private function getForm() {
		$data['heading_title'] = $this->language->get('heading_title');
		$data['heading_form'] = $this->language->get('heading_form');

		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_data'] = $this->language->get('tab_data');
		$data['tab_links'] = $this->language->get('tab_links');
		$data['tab_comments'] = $this->language->get('tab_comments');
		$data['tab_design'] = $this->language->get('tab_design');
		
		$data['text_default'] = $this->language->get('text_default');
		$data['text_enabled'] = $this->language->get('text_enabled');
    	$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_image_manager'] = $this->language->get('text_image_manager');
		$data['text_browse'] = $this->language->get('text_browse');
		$data['text_clear'] = $this->language->get('text_clear');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_all_users'] = $this->language->get('text_all_users');
		$data['text_member_only'] = $this->language->get('text_member_only');
		$data['text_please_select'] = $this->language->get('text_please_select');
    	$data['text_approve'] = $this->language->get('text_approve');
    	$data['text_unapprove'] = $this->language->get('text_unapprove');
    	$data['text_delete'] = $this->language->get('text_delete');
		$data['text_approved'] = $this->language->get('text_approved');
    	$data['text_unapproved'] = $this->language->get('text_unapproved');
		$data['text_no_comments'] = $this->language->get('text_no_comments');
		
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_page_title'] = $this->language->get('entry_page_title');
		$data['entry_meta_keyword'] = $this->language->get('entry_meta_keyword');
		$data['entry_meta_description'] = $this->language->get('entry_meta_description');
		$data['entry_description'] = $this->language->get('entry_description');
		$data['entry_short_description'] = $this->language->get('entry_short_description');
		$data['entry_short_description_h'] = $this->language->get('entry_short_description_h');
		$data['entry_tags'] = $this->language->get('entry_tags');
		$data['entry_category'] = $this->language->get('entry_category');
		$data['entry_related'] = $this->language->get('entry_related');
		$data['entry_related_products'] = $this->language->get('entry_related_products');
		$data['entry_store'] = $this->language->get('entry_store');
		$data['entry_image'] = $this->language->get('entry_image');
		$data['entry_keyword'] = $this->language->get('entry_keyword');
		$data['entry_author'] = $this->language->get('entry_author');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_allow_comment'] = $this->language->get('entry_allow_comment');
		
		$data['entry_layout'] = $this->language->get('entry_layout');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$data['allow_author_change'] = $this->config->get('blogsetting_author_change');

		$data['token'] = $this->session->data['token'];

 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

 		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = '';
		}
		
		$url = '';
			
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL')
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL')
   		);
							
		if (!isset($this->request->get['banner_id'])) {
			$data['action'] = $this->url->link('design/banner_home/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('design/banner_home/update', 'token=' . $this->session->data['token'] . '&banner_id=' . $this->request->get['banner_id'] . $url, 'SSL');
		}
		
		$data['cancel'] = $this->url->link('design/banner_home', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['banner_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$blog_info = $this->model_design_banner_home->getBanner($this->request->get['banner_id']);
		}
				
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		if (isset($this->request->post['blog_description'])) {
			$data['blog_description'] = $this->request->post['blog_description'];
		} elseif (isset($this->request->get['banner_id'])) {
			$data['blog_description'] = $this->model_design_banner_home->getBannerDescriptions($this->request->get['banner_id']);
		} else {
			$data['blog_description'] = array();
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (isset($blog_info)) {
			$data['status'] = $blog_info['status'];
		} else {
			$data['status'] = 1;
		}
		
		
		if (isset($this->request->post['date'])) {
			$data['date'] = $this->request->post['date'];
		} elseif (isset($blog_info)) {
			$data['date'] = $blog_info['date'];
		} else {
			$data['date'] = date('Y-m-d H:i:s');
		}
		
	
		if (isset($this->request->post['image'])) {
			$data['image'] = $this->request->post['image'];
		} elseif (isset($blog_info)) {
			$data['image'] = $blog_info['image'];
		} else {
			$data['image'] = '';
		}

		$this->load->model('tool/image');
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
			$data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($blog_info) && is_file(DIR_IMAGE . $blog_info['image'])) {
			$data['thumb'] = $this->model_tool_image->resize($blog_info['image'], 100, 100);
		} else {
			$data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}

		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (isset($blog_info)) {
			$data['sort_order'] = $blog_info['sort_order'];
		} else {
			$data['sort_order'] = '';
		}
		
		// Related Banner start
		$data['banners'] = $this->model_design_banner_home->getBanners(0);
		
	
		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('design/banner_home_form.tpl', $data)); 
	}

	private function validateForm() {
		return true;
	}

	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'design/banner_home')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
	
	
	public function autocomplete() {
		$json = array();

		if (isset($this->request->get['filter_name'])) {
			$this->load->model('design/banner_home');

			

			$results = $this->model_design_banner_home->getBanners(0);

			foreach ($results as $result) {
				$json[] = array(
					'banner_id' => $result['banner_id'],
					'title'        => strip_tags(html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'))
				);
			}
		}

		$sort_order = array();

		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['title'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
	
}