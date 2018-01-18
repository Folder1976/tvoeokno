<?php
class ControllerStartupSeoUrl extends Controller {
	public function index() {
		// Add rewrite to url class
		
		
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		}

		if(isset($this->request->post['redirect'])){
			//die($this->request->post['redirect']);
		}
		
		
		$data['code'] = $this->session->data['language'];

		$this->load->model('localisation/language');

		$data['languages'] = array();

		$results = $this->model_localisation_language->getLanguages();

		foreach ($results as $result) {
			if ($result['status']) {
				$data['languages'][$result['language_id']] = array(
					'name' => $result['name'],
					'code' => $result['code']
				);
			}
		}
				
	
		// Decode URL
		if (isset($this->request->get['_route_'])) {

			if($this->request->get['_route_'] == 'vse-stati/vse-stati'){
				$this->response->redirect('/uk/vse-stati');
			}
		
			if ($this->request->get['_route_'] == 'online_windows_calculator') {	
				$this->request->get['route'] = 'product/calculator';
				return true;
			}
			
			if (strpos($this->request->get['_route_'], 'all/') !== false) {	
				$this->request->get['all'] = true;
				$this->request->get['_route_'] = str_replace('all/', '', $this->request->get['_route_']);
			}
			
			//$parts = explode('/', $this->request->get['_route_']);
			$parts = array($this->request->get['_route_']);
			
			// remove any empty arrays from trailing
			if (utf8_strlen(end($parts)) == 0) {
				array_pop($parts);
			}

			foreach ($parts as $part) {
				
				$sql = "SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'";
				//echo $sql;
				$query = $this->db->query($sql);

				if ($query->num_rows) {
					
					$language_code = $data['languages'][$query->row['language_id']]['code'];
					if($language_code != $this->session->data['language']){
						$this->session->data['language'] = $language_code;
						foreach($_SESSION as $key => $value){
							$_SESSION[$key]['language'] = $language_code;
						}
						
						$this->response->redirect('/'.$query->row['keyword']);	
					}
				//window_prices
				//Okna-Ceny
					$url = explode('=', $query->row['query']);


					if ($url[0] == 'product_id') {
						$this->request->get['product_id'] = $url[1];
					}

					if ($url[0] == 'category_id') {
						if (!isset($this->request->get['path'])) {
							$this->request->get['path'] = $url[1];
						} else {
							$this->request->get['path'] .= '_' . $url[1];
						}
					}

					if ($url[0] == 'manufacturer_id') {
						$this->request->get['manufacturer_id'] = $url[1];
					}

					if ($url[0] == 'information_id') {
						$this->request->get['information_id'] = $url[1];
					}

					if ($url[0] == 'blog_id') {$this->request->get['blog_id'] = $url[1]; }
						if ($url[0] == 'blog_category_id') {
						if (!isset($this->request->get['blogpath'])) {
						$this->request->get['blogpath'] = $url[1];
							} else {
						$this->request->get['blogpath'] .= '_' . $url[1];
						}
					}
					
					if ($query->row['query'] && $url[0] != 'information_id' && $url[0] != 'manufacturer_id' && $url[0] != 'category_id' && $url[0] != 'blog_category_id' && $url[0] != 'blog_id' && $url[0]  != 'product_id') {
						$this->request->get['route'] = $query->row['query'];
					}
				} else {
						
						
					if($this->request->get['_route_'] == UA_URL){
						$this->request->get['route'] = 'common/home';
						
						if( $this->session->data['language'] != 'ua-uk'){
							$this->session->data['language'] = 'ua-uk';
							$this->response->redirect('/'.UA_URL);
						}
					}else{
						$this->request->get['route'] = 'error/not_found';
					}
						break;
					
				}
			}


			
			if (!isset($this->request->get['route'])) {
				if (isset($this->request->get['product_id'])) {
					$this->request->get['route'] = 'product/product';
				} elseif (isset($this->request->get['blog_id'])) {
					$this->request->get['route'] = 'blog/blog';
				} elseif ($this->request->get['_route_'] ==  'blog_home') { 
					$this->request->get['route'] = 'blog/home';
				} elseif (isset($this->request->get['path'])) {
					$this->request->get['route'] = 'product/category';
				} elseif (isset($this->request->get['blogpath'])) {
					$this->request->get['route'] = 'blog/category';
				} elseif (isset($this->request->get['manufacturer_id'])) {
					$this->request->get['route'] = 'product/manufacturer/info';
				} elseif (isset($this->request->get['information_id'])) {
					$this->request->get['route'] = 'information/information';
				}
			}
			
			
			
		}else{
			if($this->session->data['language'] != 'ru-ru' AND !isset($this->request->post['redirect'])){
				$this->session->data['language'] = 'ru-ru';
				$this->response->redirect('/');
			}
				
		}
	}

	public function rewrite($link) {

		$url_info = parse_url(str_replace('&amp;', '&', $link));

		$url = '';

		$data = array();

		parse_str($url_info['query'], $data);

		foreach ($data as $key => $value) {
			if (isset($data['route'])) {
				if (($data['route'] == 'product/product' && $key == 'product_id') || (($data['route'] == 'product/manufacturer/info' || $data['route'] == 'product/product') && $key == 'manufacturer_id') || ($data['route'] == 'information/information' && $key == 'information_id') || ($data['route'] == 'blog/blog' && $key == 'blog_id')) {
					
					$sql = "SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "'
											  AND language_id = '" . (int)$this->config->get('config_language_id') . "'
											  ";

					$query = $this->db->query($sql);

					if ($query->num_rows && $query->row['keyword']) {
						$url = '/' . $query->row['keyword'];
						unset($data[$key]);
					}
					
				} elseif ($key == 'blogpath') {
					$blog_categories = explode('_', $value);
					foreach ($blog_categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'blog_category_id=" . (int)$category . "'
														AND language_id = '" . (int)$this->config->get('config_language_id') . "'
														");
						if ($query->num_rows) {
							$url .= '/' . $query->row['keyword'];
						} else {
						$url = '';
						break;
						}
				}
				
				unset($data[$key]);
				
				} elseif (isset($data['route']) && $data['route'] ==   'blog/home') {
					$blog_home = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'blog/home'
												  AND language_id = '" . (int)$this->config->get('config_language_id') . "'
												  ");
					if ($blog_home->num_rows) {
						$url .= '/' . $blog_home->row['keyword'];
					} else {
					$url = '';
					}
					
				} elseif ($key == 'path') {
					$categories = explode('_', $value);

					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'category_id=" . (int)$category . "'
												  AND language_id = '" . (int)$this->config->get('config_language_id') . "'
												  ");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				}
			}
		}

		if ($url) {
			unset($data['route']);

			$query = '';

			if ($data) {
				foreach ($data as $key => $value) {
					$query .= '&' . rawurlencode((string)$key) . '=' . rawurlencode((is_array($value) ? http_build_query($value) : (string)$value));
				}

				if ($query) {
					$query = '?' . str_replace('&', '&amp;', trim($query, '&'));
				}
			}

			return $url_info['scheme'] . '://' . $url_info['host'] . (isset($url_info['port']) ? ':' . $url_info['port'] : '') . str_replace('/index.php', '', $url_info['path']) . $url . $query;
		} else {
			return $link;
		}
	}
}
