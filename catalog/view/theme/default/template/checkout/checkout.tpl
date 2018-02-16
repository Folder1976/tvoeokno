<?php
  $lands = array(
		  'Корзина' => 'Кошик',
		  'оформления заказа' => 'оформлення замовлення',
		  'Пожалуйста, введите контактный номер телефона. Он будет использоваться как логин в нашем магазине, и все ваши заказы будут привязаны к нему.' => 'Будьласка, введіть контактний номер телефону. Він буде використовуваться як логін в нашому магазині, і всі ваші замовлення будуть прив\'язані до нього.',
		  'ваша корзина' => 'ваш коршик',
		  'Стоимость' => 'Вартість',
		  'Код товара' => 'Код товару',
		  'Дополнительная комплектация' => 'Додаткова комплектація',
		  'Отлив' => 'Вiдлив',
		  'Монтаж' => 'Монтаж',
		  'Москитная сетка' => 'Москітна сітка',
		  'Откосы' => 'Вiдкоси',
		  'Доставка' => 'Доставка',
		  'Бесплатно' => 'Безкоштовно',
		  'Вам будет начисленно' => 'Вам буде нараховано',
		  'Общая стоимость' => 'Загальна вартість',
		  'Введите промокод' => 'Введіть промокод',
		  'Контактный телефон' => 'Контактний телефон',
		  'Как к вам обращаться?' => 'Як до Вас звертатися?',
		  'Ваш E-mail' => 'Ваш E-mail',
		  'Город' => 'Місто',
		  'Адрес' => 'Адреса',
		  'Номер квартиры, подьезд, этаж, код от подъезд' => 'Номер квартири, підїзд, поверх, код від підїзду',
		  'Примечание' => 'Примітки',
			'Продолжить оформление заявки' => 'Продовжити оформлення заявки',
		  '' => 'Как к вам обращаться?',
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
    //<?php echo $lib['русская фраза'];
?>

<?php echo $header; ?>

<style>
  .main-sect {display: none;}
</style>

<section class="cart">
  <div class="breadcrumbs">
    <div class="container">
      <ul class="breadcrumbs-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

	<div class="error"></div>

	<div class="container-fluid">
    <form action="/" class="checkout_form">
      <input name="formname" value="cart" type="hidden">
      <h2 class="main-title"><?php echo $lib['Корзина']; ?></h2>
      <div class="row">
        <div class="col-lg-5">
          <div class="cart-order">
            <h3><span><?php echo $lib['оформления заказа']; ?></span></h3>
            <p><?php echo $lib['Пожалуйста, введите контактный номер телефона. Он будет использоваться как логин в нашем магазине, и все ваши заказы будут привязаны к нему.']; ?></p>
            <div class="cart-order-form">
            	<div class="row">
            		<div class="col-md-6">
            			<input type="tel" name="telephone" class="form-controll" placeholder="<?php echo $lib['Контактный телефон']; ?>">
            		</div>
            		<div class="col-md-6">
            			<input type="text" name="firstname" class="form-controll" placeholder="<?php echo $lib['Как к вам обращаться?']; ?>">
            		</div>
            	</div>
              <div class="row">
              	<div class="col-md-12">
              		<input type="email" name="email" class="form-controll" placeholder="Ваш E-mail">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-6">
              		<input type="text" name="city" class="form-controll" placeholder="<?php echo $lib['Город']; ?>">
              	</div>
              	<div class="col-md-6">
              		<input type="text" name="address_1" class="form-controll" placeholder="<?php echo $lib['Адрес']; ?>">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-12">
              		<input type="text" name="address_detail" class="form-controll" placeholder="<?php echo $lib['Номер квартиры, подьезд, этаж, код от подъезд']; ?>">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-12">
              		<textarea name="note" class="form-controll" placeholder="<?php echo $lib['Примечание']; ?>"></textarea>
              	</div>
              </div>
							
							<input type="hidden" name="zone" class="form-controll" value="0">
							<input type="hidden" name="zone_id" class="form-controll" value="0">
							<input type="hidden" name="company" class="form-controll" value="0">
							<input type="hidden" name="address_2" class="form-controll" value="0">
							<input type="hidden" name="postcode" class="form-controll" value="0">
							<input type="hidden" name="country_id" class="form-controll" value="0">
							<input type="hidden" name="shipping_method" class="form-controll" value="0">
							<input type="hidden" name="agree" class="form-controll" value="true">
							<input type="hidden" name="lastname" class="form-controll" value="фамилия">
							
            </div>
          </div>
        </div>
        <div class="col-lg-7">
          <div class="cart-info">
            <h3><span><?php echo $lib['ваша корзина']; ?></span></h3>
            <?php foreach ($products as $product) { ?>
            <div class="cart-item">
              <a href="#" class="close" onclick="cart.remove('1');">×</a>
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <div class="img">
								
						    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
              </div>
              <?php if ( count($product['option']) > 0 ) { ?>
              <table class="cart-item-table">
                <tbody>
                  <?php foreach ($product['option'] as $value) { ?>
                    <tr>
                      <td><?php echo $value['name']; ?></td>
                      <td><?php echo $value['value']; ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
              <?php } ?>
              <div class="cart-item-price">
                <p><?php echo $lib['Стоимость']; ?>:</p>
								<span><?php echo $product['total']; ?></span>
                <p><?php echo $lib['Код товара']; ?>: <br> <?php echo $product['model']; ?></p>
              </div>
            </div>
            <?php } ?>

            <div class="additional">
              <p class="title"><?php echo $lib['Дополнительная комплектация']; ?></p>
              <div class="checkbox">
                <input id="c1" type="checkbox" checked>
                <label for="c1"><?php echo $lib['Отлив']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c2" type="checkbox" checked>
                <label for="c2"><?php echo $lib['Монтаж']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c3" type="checkbox" checked>
                <label for="c3"><?php echo $lib['Москитная сетка']; ?></label>
              </div>
              <div class="checkbox">
                <input id="c4" type="checkbox" checked>
                <label for="c4"><?php echo $lib['Откосы']; ?></label>
              </div>
            </div>
            <div class="total">
              <input type="hidden" class="form-controll" placeholder="<?php echo $lib['Введите промокод']; ?>" name="promo-code" value="">
              <p><?php echo $lib['Доставка']; ?>: <span><?php echo $lib['Бесплатно']; ?></span></p>
              <p class="big"><?php echo $lib['Вам будет начисленно']; ?>: <span>0 балов</span></p>
							<p style="width: calc(100% - 15px);"><?php echo $lib['Общая стоимость']; ?>: <span><?php echo $totals[0]['text'] ?></span></p>
              
							<div class="total-btn">
                <input type="button" class="btn btn-primary" style="width: 364px;"
								 value="<?php echo $lib['Продолжить оформление заявки'];?>" onClick="location.href='<?php echo $_SERVER["HTTP_REFERER"]; ?>'">
              
							  <input type="button" class="btn btn-primary" data-loading-text="<?php if (isset($text_loading)) echo $text_loading;else echo 'loading ...' ?>" id="button-register" value="<?php echo $heading_title;?>">
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>	


<?php echo $content_bottom; ?>
<?php echo $column_right; ?>



<script type="text/javascript"><!--
var error = true;

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/checkout/login_validate',
        type: 'post',
        data: $('.login-form :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},  
        complete: function() {
            $('#button-login').button('reset');
        },              
        success: function(json) {
            $('.alert, .text-danger').remove();
            
            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('.login-form .message').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

// Register
$(document).delegate('#button-register', 'click', function(){
	
	var data = $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'tel\'],  .checkout_form input[type=\'email\'],  .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select').serialize();
	data += '&_shipping_method='+ jQuery('.checkout_form input[name=\'shipping_method\']:checked').prop('title') + '&_payment_method=' + jQuery('.checkout_form input[name=\'payment_method\']:checked').prop('title');
	
    $.ajax({
        url: 'index.php?route=checkout/checkout/validate',
        type: 'post',
        data: data,
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},  
        complete: function() {
            $('#button-register').button('reset');
        },          
        success: function(json) {
            $('.alert, .text-danger').remove();
      console.log(json);                  
            if (json['redirect']) {
                location = json['redirect'];                
            } else if (json['error']) {
				error = true;
                if (json['error']['warning']) {
                    $('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
										$('html, body').animate({ scrollTop: 0 }, 'slow');
                }
                
		for (i in json['error']) {
                    $('[name="' + i + '"]').after('<div class="text-danger">' + json['error'][i] + '</div>');
		}
            } else 
	    {
			error = false;
			jQuery('[name=\'payment_method\']:checked').click();
            }    
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-spinner fa-spin"></i>');
        },
        complete: function() {
			$('.fa-spinner').remove();
        },          
        success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			            
            html = '<option value=""><?php echo $text_select; ?></option>';
            
            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }
    
                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }
            
            $('select[name=\'zone_id\']').html(html).val("");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});


$('select[name=\'shipping_country_id\']').on('change', function() {
	$.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-spinner fa-spin"></i>');
        },
        complete: function() {
			$('.fa-spinner').remove();
        },          
        success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			            
            html = '<option value=""><?php echo $text_select; ?></option>';
            
            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }
    
                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }
            
            $('select[name=\'shipping_zone_id\']').html(html).val("");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});





$('select[name=\'country_id\'], select[name=\'zone_id\'], select[name=\'shipping_country_id\'], select[name=\'shipping_zone_id\'], input[type=\'radio\'][name=\'payment_address\'], input[type=\'radio\'][name=\'shipping_address\']').on('change', function() 
{
	if (this.name == 'contry_id') jQuery("select[name=\'zone_id\']").val("");
	if (this.name == 'shipping_country_id') jQuery("select[name=\'shipping_zone_id\']").val("");
	
    jQuery(".shipping-method").load('index.php?route=checkout/checkout/shipping_method', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked,input[name=\'shipping_method\']:first, .checkout_form textarea, .checkout_form select'), function() 
    {
		if (jQuery("input[name=\'shipping_method\']:first").length) 
		{
			jQuery("input[name=\'shipping_method\']:first").attr('checked', 'checked').prop('checked', true).click();
		} else
		{
			jQuery("#cart_table").load('index.php?route=checkout/checkout/cart', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select'));	
		}
    });

	jQuery(".payment-method").load('index.php?route=checkout/checkout/payment_method', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked,input[name=\'shipping_method\']:first, .checkout_form textarea, .checkout_form select'), function() 
	{
		jQuery("[name=\'payment_method\']").removeAttr("checked").prop('checked', false);
	});
});    


$(document).delegate('input[name=\'shipping_method\']', 'click', function() 
{
    jQuery("#cart_table").load('index.php?route=checkout/checkout/cart', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select'));
});  

$('body').delegate('[name=\'payment_method\']','click', function() 
{

	var data = $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select').serialize();
	data += '&_shipping_method='+ jQuery('.checkout_form input[name=\'shipping_method\']:checked').prop('title') + '&_payment_method=' + jQuery('.checkout_form input[name=\'payment_method\']:checked').prop('title');

	if (!error)
    $.ajax({
        url: 'index.php?route=checkout/checkout/confirm',
        type: 'post',
        data: data,
        success: function(html) 
        {
			jQuery(".payment").html(html);
			
			jQuery("#button-confirm").click();
			
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

$('select[name=\'country_id\']').trigger('change');
jQuery(document).ready(function()
{
	jQuery('input:radio[name=\'payment_method\']:first').attr('checked', true).prop('checked', true);
	<?php /*if ($opencart_version < 2000) {?>
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
	<?php }*/?>
});
//--></script> 

<?php echo $footer;?>
