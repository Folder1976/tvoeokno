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
