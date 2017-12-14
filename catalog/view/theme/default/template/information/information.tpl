<?php echo $header; ?>

<?php
// Класс для section в зависимости от страницы
switch ($_GET['_route_']) {
  case 'about_us':
    $section_class = 'about';
    break;

  default:
    $section_class = '';
    break;
}
?>

<section class="<?php echo $section_class; ?>">
<div class="breadcrumbs">
  <div class="container">
    <ul class="breadcrumbs-list">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="main-title"><?php echo $heading_title; ?></h1>
      <?php echo $description; ?></div>
    </div>
</div>
</section>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>