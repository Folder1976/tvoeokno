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

<section class="compared window-price">
  <div class="breadcrumbs">
    <div class="container">
      <ul class="breadcrumbs-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
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
        <div class="row">
          <?php if ($thumb) { ?>
          <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="col-sm-10 description"><?php  echo $description; ?></div>
          <?php } ?>
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
        <div class="row" style="display: none;">
          <div class="col-md-2 col-sm-6 hidden-xs">
            <div class="btn-group btn-group-sm">
              <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
              <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="form-group">
              <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
            </div>
          </div>
          <div class="col-md-4 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="col-md-3 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
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
                
                <a href="#" class="favorite-link" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                
                <a href="<?php echo $product['href']; ?>" class="more green-btn"><?php echo $lib['ПОДРОБНЕЕ']; ?></a>
              </div>



              <div class="product-thumb" style="display: none;">
                <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                <div>
                  <div class="caption">
                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <p><?php echo $product['description']; ?></p>
                    <?php if ($product['price']) { ?>
                    <p class="price">
                      <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                      <?php } else { ?>
                      <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                      <?php } ?>
                      <?php if ($product['tax']) { ?>
                      <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                      <?php } ?>
                    </p>
                    <?php } ?>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                      <?php if ($product['rating'] < $i) { ?>
                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } else { ?>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } ?>
                      <?php } ?>
                    </div>
                    <?php } ?>
                  </div>
                  <div class="button-group">
                    <!-- Button fastorder -->
                      <div class="button-gruop">
                        <?php echo $product['fastorder']; ?>
                      </div>
                    <!-- END :  button fastorder -->
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                  </div>
                </div>
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
        <div class="row">
          <div class="col-sm-10"><?php  echo $description1; ?></div>
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
