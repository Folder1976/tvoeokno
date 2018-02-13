<?php
class ModelDesignBannerHome extends Model {
	public function getBanner($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner_home b
								  LEFT JOIN " . DB_PREFIX . "banner_home_description bi ON (b.banner_id = bi.banner_id)
								  WHERE b.banner_id = '" . (int)$banner_id . "' AND b.status = '1' AND bi.language_id = '" . (int)$this->config->get('config_language_id') . "'
								  ORDER BY b.sort_order ASC");
		return $query->rows;
	}
	public function getBanners() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner_home b
								  LEFT JOIN " . DB_PREFIX . "banner_home_description bi ON (b.banner_id = bi.banner_id)
								  WHERE b.status = '1' AND bi.language_id = '" . (int)$this->config->get('config_language_id') . "'
								  ORDER BY b.sort_order ASC");
		return $query->rows;
	}
	public function getBannerOnName($banner_name) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner b
								  LEFT JOIN " . DB_PREFIX . "banner_home_description bi ON (b.banner_id = bi.banner_id)
								  WHERE b.name LIKE '" . $this->db->escape($banner_name) . "' AND b.status = '1' AND bi.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY bi.sort_order ASC");
		return $query->rows;
	}
	
	public function getBannerNames() {
		
		$query = $this->db->query("SELECT banner_id, name FROM " . DB_PREFIX . "banner ");
		
		$return = array();
		
		foreach($query->rows as $row){
			
			$return[$row['banner_id']] = $row;
			
		}
		
		return $return;
		
	}
	
}
