<?php
class ModelBlogBlogCategory extends Model {
	public function getBlogCategory($blog_category_id) {
		
		$sql = "SELECT DISTINCT * FROM " . DB_PREFIX . "blog_category c
									LEFT JOIN " . DB_PREFIX . "blog_category_description cd ON (c.blog_category_id = cd.blog_category_id)
									LEFT JOIN " . DB_PREFIX . "blog_category_to_store c2s ON (c.blog_category_id = c2s.blog_category_id)
								    LEFT JOIN " . DB_PREFIX . "url_alias ua ON (ua.query = CONCAT('blog_category_id=',c.blog_category_id)) AND ua.language_id = '" . (int)$this->config->get('config_language_id') . "'
								  WHERE c.blog_category_id = '" . (int)$blog_category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND
								  c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'";
		
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
		
	public function getBlogCategoriesInMenu() {
		
		$sql = "SELECT * FROM " . DB_PREFIX . "blog_category BC
									LEFT JOIN " . DB_PREFIX . "blog_category_description DCD ON BC.blog_category_id = DCD.blog_category_id AND DCD.language_id = '" . (int)$this->config->get('config_language_id') . "'
									LEFT JOIN " . DB_PREFIX . "url_alias UA ON UA.query = CONCAT('blog_category_id=',BC.blog_category_id) AND UA.language_id = '" . (int)$this->config->get('config_language_id') . "'
									WHERE BC.in_menu > '0' ORDER BY in_menu ";
		//echo $sql.'<hr>';
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getBlogCategories($parent_id = 0) {

		$blog_category_data = $this->cache->get('blog_category.' . $parent_id . '.' . $this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id'));

		if (!$blog_category_data && !is_array($blog_category_data)) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category c
									  LEFT JOIN " . DB_PREFIX . "blog_category_description cd ON (c.blog_category_id = cd.blog_category_id)
									  LEFT JOIN " . DB_PREFIX . "blog_category_to_store c2s ON (c.blog_category_id = c2s.blog_category_id)
									  LEFT JOIN " . DB_PREFIX . "url_alias ua ON (ua.query = CONCAT('blog_category_id=',c.blog_category_id)) AND ua.language_id = '" . (int)$this->config->get('config_language_id') . "'
									  WHERE c.parent_id = '" . (int)$parent_id . "' AND
									  cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND
									  c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND
									  c.status = '1' AND c.sort_order <> '-1'
									  ORDER BY c.date_added DESC");
									//ORDER BY c.sort_order, c.date_added DESC");

			$blog_category_data = $query->rows;

			$this->cache->set('blog_category.' . $parent_id . '.' . $this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id'), $blog_category_data);
		}

		return $blog_category_data;
	}
				
	public function getTotalBlogCategoriesByBlogCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "blog_category c
									LEFT JOIN " . DB_PREFIX . "blog_category_to_store c2s ON (c.blog_category_id = c2s.blog_category_id)
									LEFT JOIN " . DB_PREFIX . "url_alias ua ON (ua.query = CONCAT('blog_category_id=',c.blog_category_id)) AND ua.language_id = '" . (int)$this->config->get('config_language_id') . "'
									WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1' AND c.sort_order <> '-1'");
		
		return $query->row['total'];
	}
	
	public function getBlogCategoriesByParentId($blog_category_id) {
		$blog_category_data = array();
		
		$blog_category_data[] = $blog_category_id;
		
		$blog_category_query = $this->db->query("SELECT blog_category_id FROM " . DB_PREFIX . "blog_category WHERE parent_id = '" . (int)$blog_category_id . "'");
		
		foreach ($blog_category_query->rows as $blog_category) {
			$children = $this->getBlogCategoriesByParentId($blog_category['blog_category_id']);
			
			if ($children) {
				$blog_category_data = array_merge($children, $blog_category_data);
			}			
		}
		
		return $blog_category_data;
	}
	
	public function getBlogCategoryLayoutId($blogpath) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category_to_layout WHERE
								  blog_category_id = '" . (int)$blogpath . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}

}