<?php
class ModelBlogBlogCategory extends Model {
	
	public function addBlogCategory($data) {
	
		if(isset($data['show_date'])) $data['show_date'] = 1; else $data['show_date'] = 0;
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category SET 
		parent_id = '" . (int)$data['parent_id'] . "', 
		in_menu = '" . (int)$data['in_menu'] . "', 
		sort_order = '" . (int)$data['sort_order'] . "', 
		date_added = '" . $data['date_added'] . "',
		show_date = '" . (int)$data['show_date'] . "',
		status = '" . (int)$data['status'] . "' 
		");
	
		$blog_category_id = $this->db->getLastId();
		
		foreach ($data['blog_category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_description SET 
			blog_category_id = '" . (int)$blog_category_id . "', 
			language_id = '" . (int)$language_id . "', 
			name = '" . $this->db->escape($value['name']) . "',
			page_title = '" . $this->db->escape($value['page_title']) . "', 
			meta_keywords = '" . $this->db->escape(strip_tags(htmlspecialchars_decode($value['meta_keywords'],ENT_QUOTES))) . "', 
			meta_description = '" . $this->db->escape(strip_tags(htmlspecialchars_decode($value['meta_description'],ENT_QUOTES))) . "', 
				description = '" . $this->db->escape($value['description']) . "'");
		}
		
		if (isset($data['blog_category_store'])) {
			foreach ($data['blog_category_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_to_store SET 
				blog_category_id = '" . (int)$blog_category_id . "', 
				store_id = '" . (int)$store_id . "'
			");
			}
		}

		if (isset($data['blog_category_layout'])) {
			foreach ($data['blog_category_layout'] as $store_id => $layout) {
				if ($layout['layout_id']) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_to_layout SET 
					blog_category_id = '" . (int)$blog_category_id . "', 
					store_id = '" . (int)$store_id . "', 
					layout_id = '" . (int)$layout['layout_id'] . "'
				");
				}
			}
		}
						
		if (isset($data['keyword'])) {
			foreach ($data['keyword'] as $language_id => $keyword) {
				
				if($keyword == ''){
					if($language_id == 1){
						$keyword = $this->translitArtkl($data['blog_category_description'][$language_id]['name']);
					}else{
						$keyword = 'uk/'.$this->translitArtkl($data['blog_category_description'][$language_id]['name']);
					}
				}
				
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET
								 query = 'blog_category_id=" . (int)$blog_category_id . "',
								 language_id = '" . (int)$language_id . "',
								 keyword = '" . $this->db->escape($keyword) . "'");
			}
		}
		
		$this->cache->delete('blog_category');
	}
	
	public function editBlogCategory($blog_category_id, $data) {
		
		if(isset($data['show_date'])) $data['show_date'] = 1; else $data['show_date'] = 0;
	
		$this->db->query("UPDATE " . DB_PREFIX . "blog_category SET 
		parent_id = '" . (int)$data['parent_id'] . "', 
		sort_order = '" . (int)$data['sort_order'] . "', 
		date_added = '" . $data['date_added'] . "',
		show_date = '" . (int)$data['show_date'] . "',
		in_menu = '" . (int)$data['in_menu'] . "', 
		status = '" . (int)$data['status'] . "' 
		WHERE blog_category_id = '" . (int)$blog_category_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "blog_category SET 
			image = '" . $this->db->escape($data['image']) . "' 
			WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_description WHERE blog_category_id = '" . (int)$blog_category_id . "'");

		foreach ($data['blog_category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_description SET 
			blog_category_id = '" . (int)$blog_category_id . "', 
			language_id = '" . (int)$language_id . "', 
			name = '" . $this->db->escape($value['name']) . "', 
			page_title = '" . $this->db->escape($value['page_title']) . "', 
			meta_keywords = '" . $this->db->escape(strip_tags(htmlspecialchars_decode($value['meta_keywords'],ENT_QUOTES))) . "', 
			meta_description = '" . $this->db->escape(strip_tags(htmlspecialchars_decode($value['meta_description'],ENT_QUOTES))) . "', 
			description = '" . $this->db->escape($value['description']) . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_to_store WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		
		if (isset($data['blog_category_store'])) {		
			foreach ($data['blog_category_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_to_store SET 
				blog_category_id = '" . (int)$blog_category_id . "', 
				store_id = '" . (int)$store_id . "'
				");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_to_layout WHERE blog_category_id = '" . (int)$blog_category_id . "'");

		if (isset($data['blog_category_layout'])) {
			foreach ($data['blog_category_layout'] as $store_id => $layout) {
				if ($layout['layout_id']) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "blog_category_to_layout SET 
					blog_category_id = '" . (int)$blog_category_id . "', 
					store_id = '" . (int)$store_id . "', 
					layout_id = '" . (int)$layout['layout_id'] . "'
					");
				}
			}
		}
						
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'blog_category_id=" . (int)$blog_category_id. "'");
		
		if (isset($data['keyword'])) {
			foreach ($data['keyword'] as $language_id => $keyword) {
				
				if($keyword == ''){
					if($language_id == 1){
						$keyword = $this->translitArtkl($data['blog_category_description'][$language_id]['name']);
					}else{
						$keyword = 'uk/'.$this->translitArtkl($data['blog_category_description'][$language_id]['name']);
					}
				}
	
				
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET
								 query = 'blog_category_id=" . (int)$blog_category_id . "',
								 language_id = '" . (int)$language_id . "',
								 keyword = '" . $this->db->escape($keyword) . "'");
			}
		}
		
		$this->cache->delete('blog_category');
	}
	
	public function deleteBlogCategory($blog_category_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_description WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_to_store WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "blog_category_to_layout WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'blog_category_id=" . (int)$blog_category_id . "'");
		
		$query = $this->db->query("SELECT blog_category_id FROM " . DB_PREFIX . "blog_category WHERE parent_id = '" . (int)$blog_category_id . "'");

		foreach ($query->rows as $result) {
			$this->deleteBlogCategory($result['blog_category_id']);
		}
				
		$this->cache->delete('blog_category');
	} 

	public function getBlogCategory($blog_category_id) {
		$query = $this->db->query("SELECT DISTINCT *
		FROM " . DB_PREFIX . "blog_category c
		LEFT JOIN " . DB_PREFIX . "blog_category_description cd ON (c.blog_category_id = cd.blog_category_id)
		WHERE 
		c.blog_category_id = '" . (int)$blog_category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'
		");
		
		$return = $query->row;
		
		$return['keyword'] = $this->getKeyword($blog_category_id);
		
		return $return;
	}
	
	public function getKeyword($blog_category_id) {
		
		$sql = "SELECT language_id, keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'blog_category_id=" . (int)$blog_category_id . "'";
		
		$query = $this->db->query($sql);
		
		$return = array();
		foreach($query->rows as $row){
			$return[$row['language_id']] = $row['keyword'];
		}

		return $return;
	}	
	
	public function getBlogIdCategories($filter_id) {
		$query = $this->db->query("SELECT *, (SELECT name FROM " . DB_PREFIX . "blog_category_description fgd WHERE 
		f.blog_category_id = fgd.blog_category_id AND 
		fgd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS 
		`blog_category_id` FROM " . DB_PREFIX . "blog_category f LEFT JOIN " . DB_PREFIX . "blog_category_description fd ON (f.blog_category_id = fd.blog_category_id) WHERE 
		f.blog_category_id = '" . (int)$filter_id . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	
	public function getBlogCategories($parent_id) {
		$blog_category_data = $this->cache->get('blog_category.' . $this->config->get('config_language_id') . '.' . $parent_id);
	
		if (!$blog_category_data) {
			$blog_category_data = array();
		
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category c LEFT JOIN " . DB_PREFIX . "blog_category_description cd ON (c.blog_category_id = cd.blog_category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");
		
			foreach ($query->rows as $result) {
				$blog_category_data[] = array(
					'blog_category_id' => $result['blog_category_id'],
					'name'        => $this->getPath($result['blog_category_id'], $this->config->get('config_language_id')),
					'status'  	  => $result['status'],
					'in_menu'  	  => $result['in_menu'],
					'sort_order'  => $result['sort_order']
				);
			
				$blog_category_data = array_merge($blog_category_data, $this->getBlogCategories($result['blog_category_id']));
			}	
	
			$this->cache->set('blog_category.' . $this->config->get('config_language_id') . '.' . $parent_id, $blog_category_data);
		}
		
		return $blog_category_data;
	}
	
	public function getPath($blog_category_id) {
		$query = $this->db->query("SELECT name, parent_id FROM " . DB_PREFIX . "blog_category c LEFT JOIN " . DB_PREFIX . "blog_category_description cd ON (c.blog_category_id = cd.blog_category_id) WHERE c.blog_category_id = '" . (int)$blog_category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");
		
		$blog_category_info = $query->row;
		
		if ($blog_category_info['parent_id']) {
			return $this->getPath($blog_category_info['parent_id'], $this->config->get('config_language_id')) . " > " . $blog_category_info['name'];
		} else {
			return $blog_category_info['name'];
		}
	}
	
	public function getBlogCategoryDescriptions($blog_category_id) {
		$blog_category_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category_description WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		
		foreach ($query->rows as $result) {
			$blog_category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'page_title'        => $result['page_title'],
				'meta_keywords'     => $result['meta_keywords'],
				'meta_description' => $result['meta_description'],
				'description'      => $result['description']
			);
		}
		
		return $blog_category_description_data;
	}	
	
	public function getBlogCategoryStores($blog_category_id) {
		$blog_category_store_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category_to_store WHERE blog_category_id = '" . (int)$blog_category_id . "'");

		foreach ($query->rows as $result) {
			$blog_category_store_data[] = $result['store_id'];
		}
		
		return $blog_category_store_data;
	}

	public function getBlogCategoryLayouts($blog_category_id) {
		$blog_category_layout_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category_to_layout WHERE blog_category_id = '" . (int)$blog_category_id . "'");
		
		foreach ($query->rows as $result) {
			$blog_category_layout_data[$result['store_id']] = $result['layout_id'];
		}
		
		return $blog_category_layout_data;
	}
		
	public function getTotalBlogCategories() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "blog_category");
		
		return $query->row['total'];
	}	
		
	public function getTotalBlogCategoriesByImageId($image_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "blog_category WHERE image_id = '" . (int)$image_id . "'");
		
		return $query->row['total'];
	}

	public function getTotalBlogCategoriesByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "blog_category_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}	
		
		
}