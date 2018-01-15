<?php echo $header; ?>
<section class="news-page">
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
      <div class="blog">
      <h1 class="main-title"><?php echo $heading_title; ?></h1>
      
      <?php if($description){ ?>
      <div class="main_description">
      <?php echo $description; ?>
      </div>
      <?php } ?>
  	
    <?php if($blogs){ ?>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 col-lg-3">
          <div class="aside blue-aside">
            <h3 class="blue">тип информации</h3>
            <ul class="aside-list">
              <li><a href="/news">новости</a></li>
              <li><a href="/action">акции</a></li>
              <li><a href="/blogs">Статьи</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-8">
          <div class="all-news">

            <?php foreach ($blogs as $blog) { ?>
            <div class="all-news-single">
              <img src="<?php echo $blog['image']; ?>" alt="<?php echo $blog['alt']; ?>" title="<?php echo $blog['img_title']; ?>">
              <div class="all-news-content">
                <h3><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a></h3>
                <p><?php echo $blog['short_description']; ?></p>
                <div class="bottom">
                  <p class="data"><?php if($date_added_status){ echo $blog['date_added_full']; } ?></p>
                  <a href="<?php echo $blog['href']; ?>" class="more"><?php echo $text_read_more; ?></a>
                </div>
              </div>
            </div>
            <?php } ?>

            <div style="text-align: center;">
              <div class="pagination">
                <?php echo $pagination; ?>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
	<?php }else{ ?>
		<div><?php echo $text_no_results; ?></div>
	<?php } ?>
    </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</section>
<?php echo $footer; ?> 