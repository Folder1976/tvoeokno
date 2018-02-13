<?php
class ModelDesignBannerHome extends Model {
	public function addBanner($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "banner_home SET 
		sort_order = '" . (int)$this->request->post['sort_order'] . "', 
		image = '" . $this->db->escape($data['image']) . "', 
		status = '" . (int)$data['status'] . "', 
		date = '" . $this->db->escape($data['date']) . "'");

		$banner_id = $this->db->getLastId(); 
			
		foreach ($data['blog_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "banner_home_description SET 
			banner_id = '" . (int)$banner_id . "', 
			language_id = '" . (int)$language_id . "', 
			title = '" . $this->db->escape($value['title']) . "',
			text = '" . $this->db->escape($value['text']) . "',
			h1 = '" . $this->db->escape($value['h1']) . "'
			")
		;}
	
		$this->cache->delete('banner_home');
	}
	
	public function editBanner($banner_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "banner_home SET 
		sort_order = '" . (int)$data['sort_order'] . "', 
		image = '" . $this->db->escape($data['image']) . "', 
		status = '" . (int)$data['status'] . "',
		date = '" . $data['date'] . "'
		WHERE banner_id = '" . (int)$banner_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "banner_home_description WHERE banner_id  = '" . (int)$banner_id  . "'");
					
		foreach ($data['blog_description'] as $language_id => $value) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "banner_home_description SET 
			banner_id = '" . (int)$banner_id . "', 
			language_id = '" . (int)$language_id . "', 
			title = '" . $this->db->escape($value['title']) . "',
			text = '" . $this->db->escape($value['text']) . "',
			h1 = '" . $this->db->escape($value['h1']) . "'
			");
		}

	
		$this->cache->delete('banner_home');
	}
	
	public function deleteBanner($banner_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "banner_home WHERE banner_id = '" . (int)$banner_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "banner_home_description WHERE banner_id = '" . (int)$banner_id . "'");
		
		$this->cache->delete('banner_home');
	}	

	public function getBanner($banner_id) {
		$query = $this->db->query("SELECT DISTINCT *  FROM " . DB_PREFIX . "banner_home WHERE banner_id = '" . (int)$banner_id . "' LIMIT 1");
		
		return $query->row;
	}
	
		
	public function getBanners($data = array()) {
		$sql = "SELECT *
				FROM " . DB_PREFIX . "banner_home i
				LEFT JOIN " . DB_PREFIX . "banner_home_description id ON (i.banner_id = id.banner_id)
				WHERE id.language_id = '" . (int)$this->config->get('config_language_id') . "'
				";
	
		
		
		$query = $this->db->query($sql);
		
		return $query->rows;
		
	}
	
	public function getBannerDescriptions($banner_id) {
		$blog_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner_home_description WHERE banner_id = '" . (int)$banner_id . "'");

		foreach ($query->rows as $result) {
			$blog_description_data[$result['language_id']] = $result;
			
		}
		
		return $blog_description_data;
	}
	
		
	public function getTotalBanners() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "banner_home");
		
		return $query->row['total'];
	}	
	
}