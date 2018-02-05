<?php
  $lands = array(
		  'Корзина' => 'Корзина',
		  'оформления заказа' => 'оформлення замовлення',
		  'Пожалуйста, введите контактный номер телефона. Он будет использоваться как логин в нашем магазине, и все ваши заказы будут привязаны к нему.' => 'Будьласка, введіть контактний номер телефону. Він буде використовуваться як логін в нашому магазині, і всі ваші замовлення будуть прив\'язані до нього.',
		  'ваша корзина' => 'ваша корзина',
		  'Стоимость' => 'Вартість',
		  'Код товара' => 'Код товару',
		  'Дополнительная комплектация' => 'Додаткова комплектація',
		  'Отлив' => 'Отлив',
		  'Монтаж' => 'Монтаж',
		  'Москитная сетка' => 'Москітна сітка',
		  'Откосы' => 'Откоси',
		  'Доставка' => 'Доставка',
		  'Бесплатно' => 'Безкоштовно',
		  'Вам будет начисленно' => 'Вам будет нараховано',
		  'Общая стоимость' => 'Загальна вартість',
		  'Введите промокод' => 'Введіть промокод',
		  'Контактный телефон' => 'Контактний телефон',
		  'Как к вам обращаться?' => 'Як до вас звертатися?',
		  'Ваш E-mail' => 'Ваш E-mail',
		  'Город' => 'Місто',
		  'Адрес' => 'Адреса',
		  'Номер квартиры, подьезд, этаж, код от подъезд' => 'Номер квартири, підїзд, поверх, код від підїзду',
		  'Примечание' => 'Примітки',
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
    //<?php echo $lib['русская фраза'];
echo $header; ?>

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
  <div class="container-fluid">
    <form action="/" class="js-form-call-me">
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
            			<input type="tel" name="telephone" class="form-controll" placeholder="Контактный телефон">
            		</div>
            		<div class="col-md-6">
            			<input type="text" name="firstname" class="form-controll" placeholder="Как к вам обращаться?">
            		</div>
            	</div>
              <div class="row">
              	<div class="col-md-12">
              		<input type="email" name="email" class="form-controll" placeholder="Ваш E-mail">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-6">
              		<input type="text" name="city" class="form-controll" placeholder="Город">
              	</div>
              	<div class="col-md-6">
              		<input type="text" name="address_1" class="form-controll" placeholder="Адрес">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-12">
              		<input type="text" name="address_detail" class="form-controll" placeholder="Номер квартиры, этаж, подьезд, этаж, код от подъезд">
              	</div>
              </div>
              <div class="row">
              	<div class="col-md-12">
              		<textarea name="note" class="form-controll" placeholder="Примечание"></textarea>
              	</div>
              </div>
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
                <input type="button" class="btn btn-primary" data-loading-text="<?php if (isset($text_loading)) echo $text_loading;else echo 'loading ...' ?>" id="button-register" value="<?php echo $heading_title;?>">
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</section>




<div class="container" style="display: none;">
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $product['price']; ?></td>
                <td class="text-right"><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $voucher) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $voucher['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($modules) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>


<?php echo $footer; ?>
