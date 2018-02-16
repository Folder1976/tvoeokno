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

<div class="wrap">
    <section class="product-card window-sill">
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
        <div class="row">
            <div id="content"></div>
        </div>
      </div>

      <h2 class="main-title"><?php echo $heading_title; ?></h2>

      <div class="container">
        <form action="/" class="product-card-form js-form-call-me" id="product">
          <input name="formname" value="product_sill" type="hidden">
          <input name="product_id" value="<?php echo $product_id; ?>" type="hidden">
          <div class="row">
            <div class="col-md-6">
              <div class="color">
                <div class="info-select">
                  <?php
                    foreach ($options as $option) {
                      if ( $option['option_id'] == 17 ) {  // цвет ?>
                      <select class="select product_sill_color_option" name="option[<?php echo $option['product_option_id']; ?>]">
                        <option disabled selected><?php echo $lib['Выберете цвет подоконника'];?></option>
                      
                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                            <?php } ?>
                      
                      </select>
                    <?php } ?>
                    <?php } ?>
                </div>
                
                <div class="img prices-single-img">
                  <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>" class="js-set-main_image" data-image="<?php echo $popup; ?>" />
                </div>
                
              </div>
            </div>
            <div class="col-md-6">
            
            <?php if(isset($addons) AND count($addons)){ ?>
              <div class="window-sill-info">
                <div class="window-sill-info-left" style="width: 100%">
                  <div class="sizes">
                    <p><?php echo $lib['Цены на подоконники'];?></p>
                      <table class="prices-single-table">
                        <tr>
                          <th style="text-align:left;padding-left: 5px;"><?php echo $lib['Ширина подоконника']; ?></th>
                          <th align="center"><?php echo $lib['ед.из.']; ?></th>
                          <th style="text-align:right;padding-right: 7px;"><?php echo $lib['Цена']; ?></th>
                        </tr>

                    <?php foreach ($addons as $option) { ?>
                    
                        <tr>
                          <td align="left"><?php echo $option['text']; ?></td>
                          <td align="center"><?php echo $option['text1']; ?></td>
                          <td align="right"><?php echo $option['price']; ?> грн</td>
                        </tr>

                    <?php } ?>
                    </table>
                  </div>
                </div>
              </div>
            <?php } ?>
              
            
              <div class="window-sill-info">
              
                <div class="window-sill-info-left">
                    <?php foreach ($options as $option) { ?>
                      <div class="stub" id="input-option<?php echo $option['product_option_id']; ?>">
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
                  <div class="second-count-input window-sill-count">
                    <p><?php echo $lib['Количество'];?></p>
                    <a href="#" class="second-count-btn btn-prev">-</a>
                    <input type="number" id="input-quantity" name="quantity" value="1">
                    <a href="#" class="second-count-btn btn-next">+</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="add-order-fav window-sill-order">
              <a href="#" class="link favorite-link" onclick="wishlist.add('<?php echo $product_id; ?>');return false;"><?php echo $button_wishlist; ?></a>
              <!--a href="#" class="link brand-link" onclick="compare.add('<?php echo $product_id; ?>');return false;"><?php echo $button_compare; ?></a-->
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="link-price green-btn btn btn-primary btn-lg btn-block"><?php echo $lib['Узнать стоимость']; ?></button>
              <!--button type="submit" class="link-price green-btn"><?php echo $lib['Узнать стоимость']; ?></button-->
            </div>
        </form>
      </div>
    </section>

     
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
    $('.prices-single-img img').attr('src', s);

    $('.prices-single-thumb li').removeClass('active');
    $(this).parent().parent().addClass('active');
  });
});


//--></script>
<?php echo $footer; ?>
