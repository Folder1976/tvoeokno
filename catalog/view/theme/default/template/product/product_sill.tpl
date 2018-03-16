<?php
// шаблон для подоконников не доделан: начал делать, но сказали пока эту задачу делать не нужно
// наработки не удалял, может позже прийдется возвращатся к этой задаче...

  $lands = array(
                'Цена от' => 'Ціна від',
                'При заказе с установкой' => 'При замовленні з установкою',
                'Внести свои данные для расчета' => 'Внести свої дані для розрахунку',
                'Размер окна' => 'Розмір вікна',
                'Высота' => 'Висота',
                'Ширина' => 'Ширина',
                'Длина' => 'Довжина',
                'характеристики стеклопакетов' => 'характеристики склопакетів',
                'характеристики фурнитуры' => 'характеристики фурнітури',
                'Добавить к заказу' => 'Додати до замовлення',
                'посмотреть цвета подоконников' => 'подивитися кольору підвіконь',
                'Глубина' => 'Глибина',
                'Количество окон' => 'Кількість вікон',
                'Отлив' => 'Відплив',
                'Монтаж' => 'Монтаж',
                'Москитная сетка' => 'Москітна сітка',
                'Откосы' => 'Відкоси',
                'Узнать стоимость' => 'Дізнатися вартість',
                'Бренды' => 'Бренди',
                '1-камерный' => '1-камерний',
                '2-камерный' => '2-камерний',
                'Дополнительно' => 'Додатково',
                'Выберите цвет подоконника' => 'Виберіть колір підвіконника',
                'Размер подоконника' => 'Розмір підвіконня',
                'Заглушка' => 'Заглушка',
                'Торцевая' => 'Торцевая',
                'Cоединительная' => 'Зєднувальна',
                'Стоимость' => 'Вартість',
                'Количество' => 'Кількість',
                'Выберете цвет подоконника' => 'Виберіть кольори підвіконня',
                'Цены на подоконники' => 'Ціни на підвіконня',
                'Ширина подоконника' => 'Ширина підвіконня',
                'ед.из.' => 'од.вим.',
                'Цена' => 'Ціна',
                'Описание' => 'Опис',
                'Технические характеристики' => 'Технічні характеристики',
                'Отзывы' => 'Відгуки',
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
    <section class="product-card window-sill">
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
        <div action="/" class="product-card-form" id="product">
          <input name="formname" value="product_sill" type="hidden">
          <input name="product_id" value="<?php echo $product_id; ?>" type="hidden">
          <div class="row">
            <div class="col-md-2">
              <div class="color">

                
                <div class="img prices-single-img">
                  <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>">
                </div>
                  <ul id="productGallery" class="owl-carousel prices-single-thumb" style="padding: 10px 20px 0;">
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
            </div>
            <div class="col-md-10 product-card">
              
            <?php if(isset($addons[2]) AND count($addons[2])){ ?>
              <div class="window-sill-info col-md-8">
              <div class="color1 col-md-12">
                  <div class="info-select">
                  <?php
                  
                    $image_var = array();
                  
                    foreach ($options as $option) {
                      if ( $option['option_id'] == 17 ) {  // цвет ?>
                      <select class="select product_sill_color_option" name="option[<?php echo $option['product_option_id']; ?>]">
                        <option disabled selected><?php echo $lib['Выберете цвет подоконника'];?></option>
                      
                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                              
                              <?php if(isset($product_option_image[$option_value['option_value_id']])){ ?>
                                <?php $image_var[$option_value['product_option_value_id']] = array(
                                                  'image'=>$product_option_image[$option_value['option_value_id']]['image'],
                                                  'popup'=>$product_option_image[$option_value['option_value_id']]['popup'],
                                                  'thumb'=>$product_option_image[$option_value['option_value_id']]['thumb'],
                                                 );
                                }else{
                                      $image_var[$option_value['product_option_value_id']] = array(
                                                  'image'=>'',
                                                  'popup'=>'',
                                                  'thumb'=>'',
                                                 );
                                } ?>
                              
                            <?php } ?>
                      
                      </select>
                    <?php } ?>
                    <?php } ?>
                </div>
            </div>
                <script>
                  var image_var = {
                  <?php foreach($image_var as $index => $row){ 
                    echo ''.$index.':"'.$row['popup'].'",'."\n\r";
                  } ?>
                  };
                  
                  $(document).on('change','.product_sill_color_option', function(){
                      
                     if(image_var[$(this).val()] != ""){
                        $('.prices-single-img img').attr('src',image_var[$(this).val()]);
                        $('.prices-single-img img').data('image', image_var[$(this).val()]);
                        console.log($('.prices-single-img img').data('image') );
                     }
                  });
                </script>
                <div class="window-sill-info-left" style="width: 100%">
                  <div>
                    <!--<p><?php echo $lib['Цены на подоконники'];?></p>-->
                      <table class="prices-single-table">
                        <thead>
                        <tr>
                          <th style="text-align:left;padding-left: 5px;"><?php echo $lib['Ширина подоконника']; ?></th>
                          <th align="center"><?php echo $lib['ед.из.']; ?></th>
                          <th style="text-align:left;padding-right: 7px;"><?php echo $lib['Цена']; ?></th>
                        </tr>
                        </thead>
                    <?php foreach ($addons[2] as $option) { ?>
                    
                        <tr>
                          <td align="left"><?php echo $option['text']; ?></td>
                          <td align="left"><?php echo $option['text1']; ?></td>
                          <td align="left"><?php echo $option['price']; ?> грн</td>
                        </tr>

                    <?php } ?>
                    </table>
                  </div>
                </div>
              </div>
            <?php } ?>
              <?php if(isset($addons[1]) AND count($addons[1])){ ?>
              <div class="window-sill-info">
                <div class="prices-single-right">
                <div class="complectation">
                  <h3><?php echo $lib['Дополнительно'];?></h3>
                  <?php foreach($addons[1] as $option){ ?>
                    <p><?php echo $option['text'] ;?> - <?php echo $option['price'] ;?> грн</p>
                  <?php } ?>
                  </div>
              </div>
              </div>
              
            <?php } ?>
              
            <div class="col-md-3">

          
            <div class="window-sill-info-right">
                  <div class="price">
                    <p><?php echo $lib['Стоимость'];?>: <span><?php 
                if ($price) {
                  $price_and_currency = explode(' ', $price);
                  echo round($price_and_currency[0], 2).' '.$price_and_currency[1];
                } 
                ?></span></p>
                    <p class="id"><?php echo $text_model; ?> <?php echo $model; ?></p>
                  </div>
                </div>
            </div>
              
            </div>
          </div>

          <section class="product-card-data" style="border-bottom: none;">
          <div class="container">
            <h3 class="product-card-title">Внести свої дані для розрахунку</h3>
            <div class="row">
              <div class="window-sill-info">

              <div class="col-md-4">
                 <div>
                  <div class="sizes col-md-12">
                    <p><?php echo $lib['Размер подоконника'];?></p>

                    <?php foreach ($options as $option) {
                      if ( $option['option_id'] == 16 ) {  // Глубина ?>
                        <div class="sizes-group" id="input-option<?php echo $option['product_option_id']; ?>">
                          <label for="width"><?php echo $option['name']; ?></label>
                          <input id="width" name="option[<?php echo $option['product_option_id']; ?>]" type="text" class="form-controll" value="0">
                        </div>
                      <?php } ?>
                    <?php } ?>

                    <?php foreach ($options as $option) {
                      if ( $option['option_id'] == 14 ) {  // Ширина ?>
                        <div class="sizes-group" id="input-option<?php echo $option['product_option_id']; ?>">
                          <label for="width"><?php echo $option['name']; ?></label>
                          <input id="width" name="option[<?php echo $option['product_option_id']; ?>]" type="text" class="form-controll" value="0">
                        </div>
                      <?php } ?>
                    <?php } ?>


                  </div>
              </div>
              </div>
              
               
                    <div class="options-new col-md-4">
                    <?php foreach ($options as $option) { ?>
                      <div style="width:100%;" class="stub" id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php if ( $option['option_id'] == 18 ) {  // тип подоконника ?>
                      <p><?php echo $option['name']; ?></p>

                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <div class="radio">
                          <input id="c_option[<?php echo $option['product_option_id']; ?>]__<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]" type="radio" class="form-controll" value="<?php echo $option_value['product_option_value_id']; ?>">
                          <label for="c_option[<?php echo $option['product_option_id']; ?>]__<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?></label>
                        </div>
                      <?php } ?>

                      <?php } ?>
                      </div>
                    <?php } ?>
                    </div>
                    <div class="col-md-4">
                    <div style="margin-top: 0px; min-height: 181px; width:100%;" class="second-count-input window-sill-count col-md-4">
                      <p><?php echo $lib['Количество'];?></p>
                      <a href="#" class="second-count-btn btn-prev">-</a>
                      <input type="number" id="input-quantity" name="quantity" value="1">
                      <a href="#" class="second-count-btn btn-next">+</a>
                  </div>
                  </div>
                </div>

                
              </div>
      
            </div>
        
          </div>
        </section>
          <div class="add-order-fav window-sill-order">
            

            
            <div class="container">
              
                          


              


                <div class="row">
                    <div class="col-md-6" style="margin-top: 10px;">
                        <!-- Button fastorder -->
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
                        <div class="button-gruop">
                            <?php echo $fastorder; ?>
                        </div><!-- END :  button fastorder -->
                    </div>
                    <div class="col-md-3">
                        <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="link-price green-btn btn btn-primary btn-lg btn-block"><?php echo $lib['Узнать стоимость']; ?></button>
                        <!--button type="submit" class="link-price green-btn"><?php echo $lib['Узнать стоимость']; ?></button-->

                    </div>
                </div>
      




            </div>
            </div>
          
        </div>
      </div>
    </section>
    

    
<section class="tech window-sill-tech">
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
  </section>
  
  <section>
    <div class="container">
    <div>
      <?php if ($review_status) { ?><br>
          <h3 class="product-card-title"><?php echo $lib['Отзывы']; ?>
              
          
          
          </h3>
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
