<?php
  $lands = array(
                'Фильтр' => 'Фільтр',
                'ПОДРОБНЕЕ' => 'ДЕТАЛЬНІШЕ',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                );
  $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
   $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = 'ua';}
    //Пример
    //<?php echo $lib['русская фраза']; ? >
echo $header; ?>
<style>
.main-sect { display: none; }
</style>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.12&appId=222003978541510&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<section class="compared window-price">
  
  
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

  <h2 class="main-title"><?php echo $heading_title; ?></h2>

  <div class="container-fluid">
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        
        <?php if ($thumb || $description) { ?>
        <div class="">
          <div class="row">
            <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <div class="col-sm-10 description"><?php  echo $description; ?></div>
            <?php } ?>
          </div>
        </div>
        <?php } ?>


        <?php if ( isset($_GET['filter']) ) { ?>
        <?php $filter_arr = explode(',', $_GET['filter']); ?>
        <div class="filter">
          <p><?php echo $lib['Фильтр']; ?>:</p>
          <ul class="filter-list">
            <?php foreach ($filter_arr as $value) { ?>
              <li><a href="javascript:void(0)" class="js-filter-remove" data-id="<?php echo $value; ?>"><?php echo $value; ?><span>×</span></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>


        <?php if ($categories) { ?>
        <h3 style="display: none;"><?php echo $text_refine; ?></h3>
        <?php if (count($categories) <= 5) { ?>
        <div class="row" style="display: none;">
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <?php } else { ?>
        <div class="row" style="display: none;">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>


        <?php if ($products) { ?>

        <div class="favorites">
          <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="col-md-4 col-sm-4">
              <div class="favorites-single">
                <div class="img">
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['alt']; ?>" title="<?php echo $product['title']; ?>"></a>
                </div>
                <p class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></p>
                
                <div class="price">
                   
                <?php
                  if($product['price']){
                    $price_and_currency = explode(' ', $product['price']);
                    echo round($price_and_currency[0], 2).' '.$price_and_currency[1];
                  }
                ?></div>
                <p>
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                      <?php if ($product['rating'] < $i) { ?>
                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                      <?php } else { ?>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                      <?php } ?>
                      <?php } ?>
                      <?php echo $product['reviews']; ?>
                </p>      
                <a href="#" class="favorite-link" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                 <!-- Button fastorder -->
                      <div class="button-gruop">
                        <?php echo $product['fastorder']; ?>
                      </div>
                    <!-- END :  button fastorder -->
                <a href="<?php echo $product['href']; ?>" class="more green-btn"><?php echo $lib['ПОДРОБНЕЕ']; ?></a>
              </div>



            </div>
            <?php } ?>
          </div>
          <div style="text-align: center;">
            <div class="pagination">
              <?php echo $pagination; ?>
            </div>
          </div>
        </div>
        <?php } ?>
        <?php if (!$categories && !$products) { ?>
        <p><?php echo $text_empty; ?></p>
        <div class="buttons">
          <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
        <?php } ?>
        
        <?php if ($description1) { ?>
        <div class="">
          <div class="row">
            <div class="col-sm-10"><?php  echo $description1; ?></div>
          </div>
        </div>
        <?php } ?>


        
        
        </div>
      </div>
  </div>
</section>

<script>
$('.js-filter-remove').on('click', function(){
  var id_filter = $(this).data('id');
  $(':checkbox[name*=filter][value='+id_filter+']').removeAttr('checked');
  $(this).remove();
  $('#button-filter').click();
});
</script>

<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
