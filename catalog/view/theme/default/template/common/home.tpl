<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div><!--
      
      Список производителей
    --><div>
    <?php
      foreach($manufacturers as $manufacturer){ ?>
        <br><?php echo $manufacturer['name'];?>
        <br><?php echo $manufacturer['image'];?>
        <br><?php echo $manufacturer['keyword'];?>
        <hr>
    <?php } ?>
    
    <?php $blog_category = $blogs['our_advantages']; ?>
      <h4><a href="<?php echo $blog_category['keyword']; ?>"><?php echo $blog_category['name']; ?></a></h4>
    <?php foreach($blog_category['blogs'] as $blog){ ?>
        <br><?php echo $blog['title'];?>
        <br><?php echo $blog['image'];?>
        <br><?php echo $blog['keyword'];?>
        <br><?php echo $blog['description'];?>
        <hr>
    <?php } ?>
     
    <?php $blog_category = $blogs['news']; ?>
      <h4><a href="<?php echo $blog_category['keyword']; ?>"><?php echo $blog_category['name']; ?></a></h4>
    <?php foreach($blog_category['blogs'] as $blog){ ?>
        <br><?php echo $blog['title'];?>
        <br><?php echo $blog['image'];?>
        <br><?php echo $blog['keyword'];?>
        <br><?php echo $blog['description'];?>
        <hr>
    <?php } ?>
     
    <?php $blog_category = $blogs['work']; ?>
      <h4><a href="<?php echo $blog_category['keyword']; ?>"><?php echo $blog_category['name']; ?></a></h4>
    <?php foreach($blog_category['blogs'] as $blog){ ?>
        <br><?php echo $blog['title'];?>
        <br><?php echo $blog['image'];?>
        <br><?php echo $blog['keyword'];?>
        <br><?php echo $blog['description'];?>
        <hr>
    <?php } ?>
    
    <?php $blog_category = $blogs['sertificate']; ?>
      <h4><a href="<?php echo $blog_category['keyword']; ?>"><?php echo $blog_category['name']; ?></a></h4>
    <?php foreach($blog_category['blogs'] as $blog){ ?>
        <br><?php echo $blog['title'];?>
        <br><?php echo $blog['image'];?>
        <br><?php echo $blog['keyword'];?>
        <br><?php echo $blog['description'];?>
        <hr>
    <?php } ?>
    
    <?php $blog_category = $blogs['service']; ?>
      <h4><a href="<?php echo $blog_category['keyword']; ?>"><?php echo $blog_category['name']; ?></a></h4>
    <?php foreach($blog_category['blogs'] as $blog){ ?>
        <br><?php echo $blog['title'];?>
        <br><?php echo $blog['image'];?>
        <br><?php echo $blog['keyword'];?>
        <br><?php echo $blog['description'];?>
        <hr>
    <?php } ?>
  </div><!--
    
    --><?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>