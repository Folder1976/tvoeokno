<div class="">
  <div class="panel-heading"><?php // echo $heading_title; ?></div>
  <div class="list-group sidebar">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <h3><?php echo $filter_group['name']; ?></h3>
    <ul class="sidebar-list" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
      <?php foreach ($filter_group['filter'] as $filter) { ?>
      <li>
      <div class="checkbox">
        <label>
          <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
          <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
          <?php echo $filter['name']; ?>
          <?php } else { ?>
          <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
          <?php echo $filter['name']; ?>
          <?php } ?>
        </label>
      </div>
      </li>
      <?php } ?>
    </ul>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
