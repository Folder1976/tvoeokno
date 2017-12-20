<div class="sidebar">
  <h3>Категории</h3>
  <ul class="sidebar-list">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li><a href="<?php echo $child['href']; ?>" class="active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>" class="">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  </ul>
</div>
