<?php
class ModelCatalogCalculator extends Model {
	public function getCalculators($manufacturer_id) {
		$query = $this->db->query("SELECT DISTINCT *, md.name AS name FROM " . DB_PREFIX . "manufacturer m
									LEFT JOIN " . DB_PREFIX . "manufacturer_description md ON (m.manufacturer_id = md.manufacturer_id)
									LEFT JOIN " . DB_PREFIX . "manufacturer_to_store m2s ON (m.manufacturer_id = m2s.manufacturer_id)
									LEFT JOIN " . DB_PREFIX . "url_alias ua ON (ua.query = CONCAT('manufacturer_id=', m.manufacturer_id))
									WHERE md.language_id = '" . (int)$this->config->get('config_language_id') . "' && m.manufacturer_id = '" . (int)$manufacturer_id . "' AND m2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");

		return $query->row;
	}

}