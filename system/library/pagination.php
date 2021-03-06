<?php
class Pagination {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 8;
	public $url = '';
	public $text_first = '|&lt;';
	public $text_last = '&gt;|';
	public $text_next = '';
	public $text_prev = '';

	public function render() {
		$total = $this->total;

		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}

		$this->url = str_replace('blogs/blogs','blogs',$this->url);
		
		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}

		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);

		$this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

		if(strpos($_SERVER["REQUEST_URI"], 'admin/') !== false){
			$output = '<ul class="pagination">';
			$this->text_next = 'следующий';
			$this->text_prev = 'предыдущий';
		}else{
			$output = '<ul class="pagination-list">';
		}
		
		$pref_href = '';
		if(isset($_GET['route']) AND $_GET['route'] == 'blog/blog/comment'){
			$pref_href = 'href="javascript:;" data-';
		}
		
		if ($page > 1) {
			$output .= '<li><a '.$pref_href.'href="' . str_replace('{page}', $page - 1, $this->url) . '" class="prev">' . $this->text_prev . '</a></li>';
		} else {
			$output .= '<li><a '.$pref_href.'href="' . str_replace('{page}', $page, $this->url) . '" class="prev">' . $this->text_prev . '</a></li>';
		}

		if ($num_pages > 1) {
			if ($num_pages <= $num_links) {
				$start = 1;
				$end = $num_pages;
			} else {
				$start = $page - floor($num_links / 2);
				$end = $page + floor($num_links / 2);

				if ($start < 1) {
					$end += abs($start) + 1;
					$start = 1;
				}

				if ($end > $num_pages) {
					$start -= ($end - $num_pages);
					$end = $num_pages;
				}
			}

			for ($i = $start; $i <= $end; $i++) {
				if ($page == $i) {
					$output .= '<li class="active"><span>' . $i . '</span></li>';
				} else {
					if ($i === 1) {
                        $output .= '<li><a '.$pref_href.'href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $i . '</a></li>';
					} else {
						$output .= '<li><a '.$pref_href.'href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a></li>';
					}
				}
			}
		}

		if ($page < $num_pages) {
			$output .= '<li><a '.$pref_href.'href="' . str_replace('{page}', $page + 1, $this->url) . '" class="next">' . $this->text_next . '</a></li>';
		} else {
			$output .= '<li><a '.$pref_href.'href="' . str_replace('{page}', $page, $this->url) . '" class="next">' . $this->text_next . '</a></li>';
		}

		$output .= '</ul>';

		if ($num_pages > 1) {
			return $output;
		} else {
			return '';
		}
	}
}