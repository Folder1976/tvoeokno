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
		
		$results = $this->model_blog_blog->getCommentsByBlogId(80, 0, 10);

		foreach ($results as $result) {
        		$data['comments'][] = array(
        			'name'     => $result['name'],
					'email'     => $result['email'],
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
	
		$this->load->model('blog/blog');
 		$this->load->model('blog/blog_category');
 		
 		$res = $this->model_blog_blog_category->getBlogCategories();
 		
 		foreach($res as $index => $row){
 			$data['blogs'][$row['keyword']] = $row;
 			$data['blogs'][$row['keyword']]['blogs'] = $this->model_blog_blog->getBlogsByBlogCategoryId($row['blog_category_id']);
 		}
 		
 		$this->load->model('catalog/manufacturer');
 		$data['manufacturers'] = $this->model_catalog_manufacturer->getManufacturers();
		
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
