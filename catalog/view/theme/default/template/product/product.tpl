<?php
  $lands = array(
                'Цена от' => 'Ціна від',
                'При заказе с установкой' => 'При замовленні з установкою',
                'Внести свои данные для расчета' => 'Внести свої дані для розрахунку',
                'Размер окна' => 'Розмір вікна',
                'Высота' => 'Висота',
                'Ширина' => 'Ширина',
                'характеристики стеклопакетов' => 'характеристики склопакетів',
                'характеристики фурнитуры' => 'характеристики фурнітури',
                'Добавить к заказу' => 'Додати до замовлення',
                'посмотреть цвета подоконников' => 'подивитися кольору підвіконь',
                'Размер подоконника' => 'Розмір підвіконня',
                'Глубина' => 'Глибина',
                'Количество окон' => 'Кількість вікон',
                'Отлив' => 'Відлив',
                'Монтаж' => 'Монтаж',
                'Москитная сетка' => 'Москітна сітка',
                'Откосы' => 'Відкоси',
                'Узнать стоимость' => 'Дізнатися вартість',
                'Бренды' => 'Бренди',
                '1-камерный' => '1-камерний',
                '2-камерный' => '2-камерний',
                'Дополнительно' => 'Додатково',
                                'Описание' => 'Опис',
                'Технические характеристики' => 'Технічні характеристики',
                'Отзывы' => 'Відгуки',
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
<div class="wrap">
    <section class="product-card window-product">
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
        <div class="row">
            <div id="content"></div>
        </div>
      </div>

      <h2 class="main-title"><?php echo $heading_title; ?></h2>

      <div class="container-fluid">
        <div class="prices-single">
          <div class="row">
            <div class="col-md-2">
              <div class="prices-single-img">
                <img src="<?php echo $popup; ?>" alt="">
              </div>
              <ul id="productGallery" class="owl-carousel prices-single-thumb">
                  <li>
                    <a href="javascript:void(0)">
                      <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>" class="js-set-main_image" data-image="<?php echo $popup; ?>" data-img-index="0" />
                    </a>
                  </li>
                  <?php $img_index = 0; ?>
                  <?php foreach ($images as $image) { ?>
                  <li>
                    <a href="javascript:void(0)">
                      <img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" class="js-set-main_image" data-image="<?php echo $image['popup']; ?>"  data-img-index="<?php echo ++$img_index; ?>" />
                    </a>
                  </li>
                  <?php } ?>
                </ul>
            </div>
            
            <div class="col-md-2">
              <div class="product-card-info">
                <?php if ($attribute_groups) { ?>
                    <div class="sizes">
                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                            <?php //echo $attribute_group['name']; ?>
                            <?php if($attribute_group['attribute_group_id'] == 7){ ?>
                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                  <p><?php echo $attribute['name']; ?>: <span><?php echo $attribute['text']; ?></span></p>
                                <?php } ?>
                            <?php } ?>
                        <?php } ?>
                    </div>
                <?php } ?>
                <p class="product-card-price"><?php echo $lib['Цена от']; ?>: <span><?php 
                if ($price) {
                  $price_and_currency = explode(' ', $price);
                  echo round($price_and_currency[0], 2).' '.$price_and_currency[1];
                } 
                ?></span></p>
                <p class="dop"><?php echo $umova; ?> </p>
                <p class="product-card-id"><?php echo $text_model; ?> <?php echo $model; ?></p>
              </div>
            </div>
            <div class="col-md-5">
              <table class="prices-single-table">
                <thead>
                  <tr>
                    <th><?php echo $lib['Бренды'];?></th>
                    <th><?php echo $lib['1-камерный'];?></th>
                    <th><?php echo $lib['2-камерный'];?></th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach($brand_list as $row){ ?>
                  <tr>
                    <td><?php echo $row['brand'] ;?></td>
                    <td><?php echo $row['price1'] ;?> грн</td>
                    <td><?php echo $row['price2'] ;?> грн</td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <div class="col-md-3">
              <div class="prices-single-right">
                <div class="complectation">
                  <h3><?php echo $lib['Дополнительно'];?></h3>
                  <?php foreach($addons[1] as $row){ ?>
                    <p><?php echo $row['text'] ;?> - <?php echo $row['price'] ;?> грн</p>
                  <?php } ?>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

      <form action="/" class="product-card-form js-form-call-me" id="product">
        <input name="formname" value="product" type="hidden">
        <input name="product_id" value="<?php echo $product_id; ?>" type="hidden">
        <section class="product-card-data">
          <div class="container">
            <h3 class="product-card-title"><?php echo $lib['Внести свои данные для расчета']; ?></h3>
            <div class="row">
              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="sizes">
                  <p><?php echo $lib['Размер окна']; ?></p>
                  <div class="sizes-group">
                    <label for="height"><?php echo $lib['Высота']; ?>, см</label>
                    <input id="height" name="option[w_height]" type="text" class="form-controll" value="0">
                  </div>
                  <div class="sizes-group">
                    <label for="width"><?php echo $lib['Ширина']; ?>, см</label>
                    <input id="width" name="option[w_width]" type="text" class="form-controll" value="0">
                  </div>
                </div>
              </div>
              <div class="col-lg-9 col-md-8 col-sm-6">
                <div class="info">

                  <?php $group = $group_list[7]; // Оконная система ?>
                  <?php if ( $group['enable'] == 1 ) { ?>
                  <div class="info-select">
                    <select class="select" name="option[<?php echo $group['attribute_group_id']; ?>]">
                      <option disabled selected><?php echo $group['name']; ?></option>
                      <?php foreach ($group['list'] as $k => $attribute) { ?>
                      <?php if ( $attribute['enable'] == 1 ) { ?>
                        <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                  <?php } ?>

                  <?php $group = $group_list[8]; // Стеклопакет ?>
                  <?php if ( $group['enable'] == 1 ) { ?>
                  <div class="info-select">
                    <select class="select" name="option[<?php echo $group['attribute_group_id']; ?>]">
                      <option disabled selected><?php echo $group['name']; ?></option>
                      <?php foreach ($group['list'] as $k => $attribute) { ?>
                      <?php if ( $attribute['enable'] == 1 ) { ?>
                        <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <a href="/<?php echo $harakterustuku_steklopaketov['keyword']; ?>"><?php echo $harakterustuku_steklopaketov['title']; ?></a>
                  </div>
                  <?php } ?>

                  <?php $group = $group_list[9]; // Фурнитура ?>
                  <?php if ( $group['enable'] == 1 ) { ?>
                  <div class="info-select">
                    <select class="select" name="option[<?php echo $group['attribute_group_id']; ?>]">
                      <option disabled selected><?php echo $group['name']; ?></option>
                      <?php foreach ($group['list'] as $k => $attribute) { ?>
                      <?php if ( $attribute['enable'] == 1 ) { ?>
                        <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <a href="/<?php echo $harakterustuku_furnituri['keyword']; ?>"><?php echo $harakterustuku_furnituri['title']; ?></a>
                  </div>
                  <?php } ?>

                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="add-order">
          <div class="container">
            <h3 class="product-card-title"><?php echo $lib['Добавить к заказу']; ?></h3>

            <?php $group = $group_list[10]; // Подоконник ?>
            <?php if ( $group['enable'] == 1 ) { ?>
            <div class="info-select">
              <select class="select" name="option[<?php echo $group['attribute_group_id']; ?>]">
                <option disabled selected><?php echo $group['name']; ?></option>
                <?php foreach ($group['list'] as $k => $attribute) { ?>
                <?php if ( $attribute['enable'] == 1 ) { ?>
                  <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <a href="/<?php echo $posmotret_cveta_podoconnikov['keyword']; ?>"><?php echo $posmotret_cveta_podoconnikov['title']; ?></a>
            </div>
            <?php } ?>

            <div class="counts">
              <div class="first-count">
                <p><?php echo $lib['Размер подоконника']; ?></p>
                <div class="sizes-group">
                  <label for="height2"><?php echo $lib['Глубина']; ?>, см</label>
                  <input id="height2" name="option[p_height]" type="text" class="form-controll" value="0">
                </div>
                <div class="sizes-group">
                  <label for="width2"><?php echo $lib['Ширина']; ?>, см</label>
                  <input id="width2" name="option[p_width]" type="text" class="form-controll" value="0">
                </div>
              </div>
              <div class="second-count">
                <p><?php echo $lib['Количество окон']; ?></p>
                <div class="second-count-input">
                  <a href="#" class="second-count-btn btn-prev">-</a>
                  <input type="number" id="input-quantity" name="quantity" value="1">
                  <a href="#" class="second-count-btn btn-next">+</a>
                </div>
              </div>
            </div>
            <div class="add-order-dop">
              <div class="checkbox">
                <input id="c1" type="checkbox" name="option[otliv]" checked>
                <label for="c1"><?php echo $lib['Отлив']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c2" type="checkbox" name="option[montage]" checked>
                <label for="c2"><?php echo $lib['Монтаж']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c3" type="checkbox" name="option[moskito]" checked>
                <label for="c3"><?php echo $lib['Москитная сетка']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c4" type="checkbox" name="option[otkos]" checked>
                <label for="c4"><?php echo $lib['Откосы']; ?></label>
              </div>
            </div>
            <div class="add-order-fav">


              

                <div class="row">
                    <div class="col-md-6" style="margin-top: 10px;">
                        <?php if ($review_status) { ?>
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($rating < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                        <?php } ?>
                        <?php } ?>
                        <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a><!-- / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a-->
                        &nbsp;&nbsp;&nbsp;
                        <?php } ?>
                        <a href="#" class="link favorite-link" onclick="wishlist.add('<?php echo $product_id; ?>');return false;"><?php echo $button_wishlist; ?></a>
                        <!--a href="#" class="link brand-link" onclick="compare.add('<?php echo $product_id; ?>');return false;"><?php echo $button_compare; ?></a-->

                    </div>
                    <div class="col-md-3">
                        <!-- Button fastorder -->
                        <div class="button-gruop">
                            <?php echo $fastorder; ?>
                        </div>
                        <!-- END :  button fastorder -->

                    </div>
                    <div class="col-md-3">
                        <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="link-price green-btn btn btn-primary btn-lg btn-block"><?php echo $lib['Узнать стоимость']; ?></button>
                        <!--button type="submit" class="link-price green-btn"><?php echo $lib['Узнать стоимость']; ?></button-->

                    </div>
                </div>

            </div>
          </div>
        </section>
        <section class="tech">
          <div class="container">
            <div class="row">
              <div class="col-md-8">
                <div class="char">
                  <h3 class="product-card-title"><?php echo $tab_attribute; ?></h3>
                  <table class="tech-table">
                    <tbody>
                <?php if ($attribute_groups) { ?>
                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                            <?php if($attribute_group['attribute_group_id'] != 7){ ?>
                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                     <tr>
                                        <td><?php echo $attribute['name']; ?></td>
                                        <td><?php echo $attribute['text']; ?></td>
                                    </tr>
                                 <?php } ?>
                            <?php } ?>
                        <?php } ?>
            
                <?php } ?>
                        
                         </tbody>
                  </table>
                </div>
              </div>
              <div class="col-md-4">
                <div class="desc">
                  <h3 class="product-card-title"><?php echo $tab_description; ?></h3>
                  <?php echo $description; ?>
                </div>
              </div>
            </div>
          </div>
        </section>
      </form>
      
      
          
      <section class="similar-product">
        <?php if ($products) { ?>
        <div class="container">
          <h2 class="main-title"><?php echo $text_related; ?></h2>
          <div class="slider">
            <div class="owl-nav navs">
              <a href="#" class="owl-prev similar-next prev"><span></span></a>
              <a href="#" class="owl-next similar-prev next"><span></span></a>
            </div>
            <div class="similar-product-slider owl-carousel">
                <?php $i = 0; ?>
                <?php foreach ($products as $product) { ?>
                    <div class="item">
                      <div class="favorites-single">
                        <div class="img">
                          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                        </div>
                        <p class="name"><?php echo $product['name']; ?></p>
                        <a href="javascript:;" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="favorite-link"><?php echo $button_wishlist; ?></a>
                        <a href="<?php echo $product['href']; ?>" class="more green-btn"><?php echo $text_detail; ?></a>
                      </div>
                    </div>
                <?php } ?>
            </div>
          </div>
        </div>
        <?php } ?>



         

   
<!----section class="tech window-sill-tech">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="char">
            <h3 class="product-card-title"><?php echo $lib['Технические характеристики']; ?></h3>
            <table class="tech-table">
              <tbody>
                <?php foreach($attribute_groups as $attribute_group){ ?>
                <?php foreach($attribute_group['attribute'] as $attribute){ ?>
                <tr>
                  <td><?php echo $attribute['name']; ?></td>
                  <td><?php echo $attribute['text']; ?></td>
                </tr>
                <?php } ?>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
        <div class="col-md-4">
          <div class="desc">
            <h3 class="product-card-title"><?php echo $lib['Описание']; ?></h3>
            <?php echo $description; ?>
          </div>
        </div>
      </div>
    </div>
  </section-->
  
  <section>
    <div class="container">
    <div>
      <?php if ($review_status) { ?><br>
          <h3 class="product-card-title"><?php echo $lib['Отзывы']; ?></h3>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
     </div>
    </div>
  </section>   
  <br><br><br>   
     
     
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
		
    console.log(json);

    	$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));



						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumbs').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
        $('#cart-total').html(json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
// $('.date').datetimepicker({
// 	pickTime: false
// });

// $('.datetime').datetimepicker({
// 	pickDate: true,
// 	pickTime: true
// });

// $('.time').datetimepicker({
// 	pickDate: false
// });

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});


$(document).ready(function() {
  $('.prices-single-thumb').on('click', '.js-set-main_image', function(){
    var s = $(this).data('image');
    var i = $(this).data('img-index');
    $('.prices-single-img img').attr('src', s);
    $('.prices-single-img img').data('img-index', i);

    $('.prices-single-thumb li').removeClass('active');
    $(this).parent().parent().addClass('active');
  });
});


  // зум фото на странице товара
  var zoomIndex = 0;

//--></script>
<?php echo $footer; ?>