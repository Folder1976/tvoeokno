<?php
class ControllerCommonLanguage extends Controller {
	public function index() {
		$this->load->language('common/language');

		$data['text_language'] = $this->language->get('text_language');

		$data['action'] = $this->url->link('common/language/language', '', isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')));

		$data['code'] = $this->session->data['language'];

		$this->load->model('localisation/language');

		$data['languages'] = array();

		$results = $this->model_localisation_language->getLanguages();

		foreach ($results as $result) {
			if ($result['status']) {
				$data['languages'][] = array(
					'name' => $result['name'],
					'code' => $result['code']
				);
			}
		}

		if (!isset($this->request->get['route'])) {
			$data['redirect'] = '/';//$this->url->link('common/home');
		} else {
			$url_data = $this->request->get;

			$route = $url_data['route'];

			unset($url_data['route']);
			unset($url_data['_route_']);

			$url = '';

			if ($url_data) {
				$url = '&' . urldecode(http_build_query($url_data, '', '&'));
			}

			$data['redirect'] = $this->url->link($route, $url, isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')));
		}

		return $this->load->view('common/language', $data);
	}

	public function language() {
	
		if (isset($this->request->post['code'])) {
			$this->session->data['language'] = $this->request->post['code'];
		}

		if (isset($this->request->post['redirect'])) {
			
			$redirect = $this->request->post['redirect'];
			$redirect = str_replace(array(HTTP_SERVER,HTTPS_SERVER),'', $redirect);
			$tmp = explode('?',$redirect);
			$redirect = $tmp[0];
//echo '<br>'.$redirect;			
			//Получим языковой аналог урл
			$this->load->model('localisation/language');

			$data['languages'] = array();

			$results = $this->model_localisation_language->getLanguages();

			foreach ($results as $result) {
				if ($result['status']) {
					$languages[$result['code']] = array(
						'name' => $result['name'],
						'language_id' => $result['language_id']
					);
				}
			}
			$language_id = $languages[$this->request->post['code']]['language_id'];
			
			$sql = "SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($redirect) . "' LIMIT 1";
			$query = $this->db->query($sql);

				if ($query->num_rows) {
					$sql = "SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($query->row['query']) . "' AND language_id = '$language_id' LIMIT 1";
					$query2 = $this->db->query($sql);

					if ($query2->num_rows) {
						$redirect = '/'.$query2->row['keyword'];
					}
				}
				
			$this->response->redirect($redirect);
		} else {
			$this->response->redirect($this->url->link('common/home'));
		}
	}
}