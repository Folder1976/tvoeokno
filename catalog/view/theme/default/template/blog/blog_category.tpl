<?php
  $lands = array(
                'тип информации' => 'тип інформації',
                'новости' => 'новини',
                'акции' => 'акції',
                'Статьи' => 'статті',
                'наши работы' => 'наші роботи',
                'окна по серии дома' => 'вікна по серії будинку',
                'выезд в пригород' => 'виїзд в передмістя',
               
							  'news' => 'uk/news',
                'action' => 'uk/action',
                'blogs' => 'uk/blogs',
							  'nashi-raboty' => 'uk/nashi-raboty',
                'okna-po-serii-doma' => 'uk/okna-po-serii-doma',
                'ustanovka-okon-v-kievskoj-oblasti' => 'uk/ustanovka-okon-v-kievskoj-oblasti',
                'АКЦИЯ ДЕЙСТВИТЕЛЬНА ДО' => 'АКЦІЯ ДІЙСНА ДО',
                );
  $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
   $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = 'ua';}
	  //Пример
    //<?php echo $lib['русская фраза']; ? >
		
echo $header; ?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.12&appId=222003978541510&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<section class="news-page">


    <div class="breadcrumbs">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <ul class="breadcrumbs-list">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
              <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <div class="col-sm-6">
            <div class="kakto">
              <div class="fb-like" data-href="http://tvoeokno.ua/<?php echo $_GET['_route_']; ?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
            </div>
          </div>
        </div>
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
  		
        <?php if ($blog_category_description) { ?>
		<div class="main_description">
		<?php echo $blog_category_description; ?>
		</div>
		<?php } ?>
        
  	<?php if($blogs){ ?>
    <div class="container-fluid">
      <div class="row">
				<?php if(count($menu)){ ?>
					<div class="col-md-3 col-lg-3">
						<div class="aside blue-aside">
							<h3 class="blue"><?php echo $lib['тип информации']; ?></h3>
							<ul class="aside-list">
								<?php foreach($menu as $row){ ?>
									<li><a href="/<?php echo $row['keyword']; ?>"><?php echo $row['name']; ?></a></li>
								<?php } ?>
								
								<!--li><a href="/action"><?php echo $lib['акции']; ?></a></li>
								<li><a href="/blogs"><?php echo $lib['Статьи']; ?></a></li>
								<li><a href="/nashi-raboty"><?php echo $lib['наши работы']; ?></a></li>
								<li><a href="/okna-po-serii-doma"><?php echo $lib['окна по серии дома']; ?></a></li>
								<li><a href="/ustanovka-okon-v-kievskoj-oblasti"><?php echo $lib['выезд в пригород']; ?></a></li-->
							</ul>
						</div>
					</div>
				<?php } ?>
        <div class="col-md-8">
          <div class="all-news">

            <?php foreach ($blogs as $blog) { ?>
            <div class="all-news-single">
							<?php if(strpos($blog['image'], 'no_image') === false){?>
								<img src="<?php echo $blog['image']; ?>" alt="<?php echo $blog['alt']; ?>" title="<?php echo $blog['title']; ?>">
								<div class="all-news-content">
							<?php }else{ ?>
								<div class="all-news-content" style="width: 100%;">
							<?php } ?>
							<?php if($blog['date_action'] !=''){ ?>
								<span class="action_date"><?php echo $lib['АКЦИЯ ДЕЙСТВИТЕЛЬНА ДО']; ?> <span class="date"><?php echo $blog['date_action']; ?></span></span>
							<?php } ?>
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
		<?php echo $text_no_results; ?>
	<?php } ?>
    </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</section>
<?php echo $footer; ?> 