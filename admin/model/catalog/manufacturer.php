<?php
class ModelCatalogManufacturer extends Model {
	public function addManufacturer($data) {

		$this->load->model('localisation/language');
		$language_info = $this->model_localisation_language->getLanguageByCode($this->config->get('config_language'));
    $front_language_id = $language_info['language_id'];
		$data['name'] = $data['manufacturer_description'][$front_language_id ]['name'];
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer SET name = '" . $this->db->escape($data['name']) . "', sort_order = '" . (int)$data['sort_order'] . "'");

		$manufacturer_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "manufacturer SET image = '" . $this->db->escape($data['image']) . "' WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");
		}

		foreach ($data['manufacturer_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer_description SET manufacturer_id = '" . (int)$manufacturer_id . "',
							 language_id = '" . (int)$language_id . "', 
							 name = '" . $this->db->escape($value['name']) . "',
							 description = '" . $this->db->escape($value['description']) . "',
							
							 image1 = '" . $this->db->escape($value['image1']) . "',
							 image2 = '" . $this->db->escape($value['image2']) . "',
							 image3 = '" . $this->db->escape($value['image3']) . "',
							
							 tab1 = '" . $this->db->escape($value['tab1']) . "',
							 tab2 = '" . $this->db->escape($value['tab2']) . "',
							 tab3 = '" . $this->db->escape($value['tab3']) . "',
							
							 tab_description1 = '" . $this->db->escape($value['tab_description1']) . "',
							 tab_description2 = '" . $this->db->escape($value['tab_description2']) . "',
							 tab_description3 = '" . $this->db->escape($value['tab_description3']) . "',
							
							 alt = '" . $this->db->escape($value['alt']) . "',
							 title = '" . $this->db->escape($value['title']) . "',
							
							 short_description = '" . $this->db->escape($value['short_description']) . "',
							 meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_h1 = '" . $this->db->escape($value['meta_h1']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		if (isset($data['manufacturer_store'])) {
			foreach ($data['manufacturer_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer_to_store SET manufacturer_id = '" . (int)$manufacturer_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		if (isset($data['keyword'])) {
			foreach ($data['keyword'] as $language_id => $keyword) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET
								 query = 'manufacturer_id=" . (int)$manufacturer_id . "',
								 language_id = '" . (int)$language_id . "',
								 keyword = '" . $this->db->escape($keyword) . "'");
			}
		}

		$this->cache->delete('manufacturer');

		return $manufacturer_id;
	}

	public function editManufacturer($manufacturer_id, $data) {
		
		
		$this->load->model('localisation/language');
		$language_info = $this->model_localisation_language->getLanguageByCode($this->config->get('config_language'));
    $front_language_id = $language_info['language_id'];
		$data['name'] = $data['manufacturer_description'][$front_language_id ]['name'];

		$this->db->query("UPDATE " . DB_PREFIX . "manufacturer SET name = '" . $this->db->escape($data['name']) . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "manufacturer SET image = '" . $this->db->escape($data['image']) . "' WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "manufacturer_description WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		foreach ($data['manufacturer_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer_description SET
							 manufacturer_id = '" . (int)$manufacturer_id . "',
							 language_id = '" . (int)$language_id . "',
							 name = '" . $this->db->escape($value['name']) . "',
							 short_description = '" . $this->db->escape($value['short_description']) . "',
							 alt = '" . $this->db->escape($value['alt']) . "',
							 title = '" . $this->db->escape($value['title']) . "',
							 description = '" . $this->db->escape($value['description']) . "',
							 
							image1 = '" . $this->db->escape($value['image1']) . "',
							 image2 = '" . $this->db->escape($value['image2']) . "',
							 image3 = '" . $this->db->escape($value['image3']) . "',
							
							 tab1 = '" . $this->db->escape($value['tab1']) . "',
							 tab2 = '" . $this->db->escape($value['tab2']) . "',
							 tab3 = '" . $this->db->escape($value['tab3']) . "',
							
							 tab_description1 = '" . $this->db->escape($value['tab_description1']) . "',
							 tab_description2 = '" . $this->db->escape($value['tab_description2']) . "',
							 tab_description3 = '" . $this->db->escape($value['tab_description3']) . "',
					
							 
							 meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_h1 = '" . $this->db->escape($value['meta_h1']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "manufacturer_to_store WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		if (isset($data['manufacturer_store'])) {
			foreach ($data['manufacturer_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer_to_store SET manufacturer_id = '" . (int)$manufacturer_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'manufacturer_id=" . (int)$manufacturer_id . "'");

			if (isset($data['keyword'])) {
			foreach ($data['keyword'] as $language_id => $keyword) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET
								 query = 'manufacturer_id=" . (int)$manufacturer_id . "',
								 language_id = '" . (int)$language_id . "',
								 keyword = '" . $this->db->escape($keyword) . "'");
			}
		}

		$this->cache->delete('manufacturer');
	}

	public function deleteManufacturer($manufacturer_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "manufacturer WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "manufacturer_to_store WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'manufacturer_id=" . (int)$manufacturer_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "manufacturer_description WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		$this->cache->delete('manufacturer');
	}

	public function getManufacturer($manufacturer_id) {
		
		$sql = "SELECT DISTINCT * FROM " . DB_PREFIX . "manufacturer WHERE manufacturer_id = '" . (int)$manufacturer_id . "'";
		
		$query = $this->db->query($sql);

		$return = $query->row;
		
		$return['keyword'] = $this->getKeyword($manufacturer_id);
		
		return $return;
		
	}
	public function getKeyword($manufacturer_id) {
		
		$sql = "SELECT language_id, keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'manufacturer_id=" . (int)$manufacturer_id . "'";
		
		$query = $this->db->query($sql);
		
		$return = array();
		foreach($query->rows as $row){
			$return[$row['language_id']] = $row['keyword'];
		}

		return $return;
	}

	public function getManufacturerDescriptions($manufacturer_id) {
		$manufacturer_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "manufacturer_description WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		foreach ($query->rows as $result) {
			$manufacturer_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_h1'          => $result['meta_h1'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'short_description'      => $result['short_description'],
				'alt'      => $result['alt'],
				'title'      => $result['title'],
				'description'      	=> $result['description'],
				'image1'      		=> $result['image1'],
				'image2'      		=> $result['image2'],
				'image3'      		=> $result['image3'],
				'tab1'      		=> $result['tab1'],
				'tab2'      		=> $result['tab2'],
				'tab3'      		=> $result['tab3'],
				'tab_description1'      => $result['tab_description1'],
				'tab_description2'      => $result['tab_description2'],
				'tab_description3'      => $result['tab_description3'],
			);
		}


		return $manufacturer_description_data;
	}

	public function getManufacturers($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "manufacturer";

		$sql = "SELECT c.manufacturer_id, md.name, c.sort_order FROM " . DB_PREFIX . "manufacturer c LEFT JOIN " . DB_PREFIX . "manufacturer_description md ON (c.manufacturer_id = md.manufacturer_id) WHERE md.language_id = '" . (int)$this->config->get('config_language_id') . "'";



		if (!empty($data['filter_name'])) {
			$sql .= " AND name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getManufacturerStores($manufacturer_id) {
		$manufacturer_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "manufacturer_to_store WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		foreach ($query->rows as $result) {
			$manufacturer_store_data[] = $result['store_id'];
		}

		return $manufacturer_store_data;
	}

	public function getTotalManufacturers() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "manufacturer");

		return $query->row['total'];
	}
}
