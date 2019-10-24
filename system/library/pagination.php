<?php
class Pagination {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 8;
	public $url = '';
	public $text_first = '&lt;';
	public $text_last = '&gt;';
	public $text_next = '<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAARCAYAAADkIz3lAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA39pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo5ZWViZTRiOC0zZTZhLTE2NDMtYTdkZC04MDZlMGFmMjY3NGQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NjZBOTgwNDRGNjJGMTFFOUJENEFGRjI1NzBGQzdBMEMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NjZBOTgwNDNGNjJGMTFFOUJENEFGRjI1NzBGQzdBMEMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmQ3ZjA2NzMyLTM2YTUtZDE0Ny04OTM5LTZhYzI5ZTUxMmY1OSIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjk2MjI4NzY2LTkwNGEtMTFlOS1hY2NlLWY4MGYzNTA4MTRmNSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PvfC3CoAAAEHSURBVHjaYjQwMNjFwMCgA8Sp58+f38qAAzABsSsQSwLxFkNDw2B8Ci2B+C+UvwaoOByrQqB1J4C0GRD/hIqtACqOxWYiA1DxOSBlAsSfoOKLgIrTMRRCFV8BUsZA/B4qNAOoOAdDIVTxHaji11ChyUDFxSAG4////zEcDpSUBlKgoNKHClViVQhVrAGkQM5hxrAaSZEoyEMwRUDQyILD2pNALA0VqgG6vZUFTZEckDoFxOJQoRKgol4QgwVJkTqQOgrEwlChPKCiyTB5FqgiUKIAxRA3VDwNqGg2sm2MwNRjBDWJAyoWD1S0CN3tIBPPIvGjgYqW4Uo9B4D4JRAH41IEAgABBgArvE+J9nx64gAAAABJRU5ErkJggg==" alt="иконка" />';
	public $text_prev = '<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAARCAYAAADkIz3lAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA39pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo5ZWViZTRiOC0zZTZhLTE2NDMtYTdkZC04MDZlMGFmMjY3NGQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NzU2N0ZGNzBGNjJGMTFFOUE5MjRFNkMxMDkyQjUzNDciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NzU2N0ZGNkZGNjJGMTFFOUE5MjRFNkMxMDkyQjUzNDciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmQ3ZjA2NzMyLTM2YTUtZDE0Ny04OTM5LTZhYzI5ZTUxMmY1OSIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjk2MjI4NzY2LTkwNGEtMTFlOS1hY2NlLWY4MGYzNTA4MTRmNSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlUb9DwAAAECSURBVHjaYvz//z8DLmBoaOgNpGYD8RUWPIqCgdQaKFeSCYeicCRFf4HYkgmLolggtQLK/QnEZufPnz/BhKYoHUgtgnI/AbEJUNE5EIcJSVEOkJoB5b4HYmOgoisweSaoomIgNRkq9hqq6A6ybUxARRVAugfKvwjSB1R0H93tjAYGBv+RfKcDVHQDW0iArG6EsplBHgHaIIpNISMoZoCS1UB2C1TsKRCbA01+iqEQyUMwt76Eht8jFF+DAFCwF0jlQbniQHwOqFkdw0Sk8EwFUrOg3K9AbAEKT0ZsqQeoOA5ILYRyfwCxNSOuZAZUHAWklmK4ER0ArVsGpIKhHjsAEGAA72Fe4GwKUu0AAAAASUVORK5CYII=" alt="иконка" />';

	public function render() {
		$total = $this->total;

		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}

		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}

		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);

		$this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

		$output = '<ul class="pagination">';

		if ($page > 1) {

			if ($page - 1 === 1) {
                $output .= '<li><a class="no-border"  href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $this->text_prev . '</a></li>';
			} else {
				$output .= '<li><a  class="no-border"  href="' . str_replace('{page}', $page - 1, $this->url) . '">' . $this->text_prev . '</a></li>';
			}
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
                        $output .= '<li><a href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $i . '</a></li>';
					} else {
						$output .= '<li><a href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a></li>';
					}
				}
			}
		}

		if ($page < $num_pages) {
			$output .= '<li><a class="no-border" href="' . str_replace('{page}', $page + 1, $this->url) . '">' . $this->text_next . '</a></li>';
		}

		$output .= '</ul>';

		if ($num_pages > 1) {
			return $output;
		} else {
			return '';
		}
	}
}