<?php echo $header; ?>
<style>
.main-sect { display: none; }
</style>

<div class="wrap">
    <section class="product-card">
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

      <div class="container-fluid">
        <div class="prices-single">
          <div class="row">
            <div class="col-md-2">
              <div class="prices-single-img">
                <img src="img/window.png" alt="">
              </div>
            </div>
            <div class="col-md-2">
              <div class="product-card-info">
                <div class="sizes">
                  <p>Ширина: <span>1800 см</span></p>
                  <p>Высота: <span>1400 см</span></p>
                </div>
                <p class="product-card-price">Цена от: <span><?php 
                if ($price) {
                  $price_and_currency = explode(' ', $price);
                  echo round($price_and_currency[0], 2).' '.$price_and_currency[1];
                } 
                ?></span></p>
                <p class="dop">* При заказе с установкой</p>
                <p class="product-card-id"><?php echo $text_model; ?> <?php echo $model; ?></p>
              </div>
            </div>
            <div class="col-md-5">
              <table class="prices-single-table">
                <thead>
                  <tr>
                    <th>Бренды</th>
                    <th>1-камерый</th>
                    <th>2-камерный</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Open teck</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>WDS Olimpia</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Rehau Ecosol 60</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Rehau Ecosol 70</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Salamander 2D</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Salamander Streamline</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Windom Eco</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                  <tr>
                    <td>Decco 71</td>
                    <td>1688 грн</td>
                    <td>1688 грн</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="col-md-3">
              <div class="prices-single-right">
                <div class="complectation">
                  <h3>Дополнительно</h3>
                  <p>Подоконник 26 см - 106 грн</p>
                  <p>Отлив 15 см - 70 грн</p>
                  <p>Москитная сетка - 120 грн</p>
                  <p>Установка окна 486 грн</p>
                  <p>Установка окна 486 грн</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

      <form action="/" class="product-card-form js-form-call-me">
        <input name="formname" value="product" type="hidden">
        <section class="product-card-data">
          <div class="container">
            <h3 class="product-card-title">Внести свои данные для расчета</h3>
            <div class="row">
              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="sizes">
                  <p>Размер окна</p>
                  <div class="sizes-group">
                    <label for="height">Высота, см</label>
                    <input id="height" type="text" class="form-controll" value="0">
                  </div>
                  <div class="sizes-group">
                    <label for="width">Ширина, см</label>
                    <input id="width" type="text" class="form-controll" value="0">
                  </div>
                </div>
              </div>
              <div class="col-lg-9 col-md-8 col-sm-6">
                <div class="info">

                  <?php $group = $group_list[7]; // Оконная система ?>
                  <?php if ( $group['enable'] == 1 ) { ?>
                  <div class="info-select">
                    <select class="select" name="<?php echo $group['attribute_group_id']; ?>">
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
                    <select class="select" name="<?php echo $group['attribute_group_id']; ?>">
                      <option disabled selected><?php echo $group['name']; ?></option>
                      <?php foreach ($group['list'] as $k => $attribute) { ?>
                      <?php if ( $attribute['enable'] == 1 ) { ?>
                        <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <a href="#">характеристики стеклопакетов</a>
                  </div>
                  <?php } ?>

                  <?php $group = $group_list[9]; // Фурнитура ?>
                  <?php if ( $group['enable'] == 1 ) { ?>
                  <div class="info-select">
                    <select class="select" name="<?php echo $group['attribute_group_id']; ?>">
                      <option disabled selected><?php echo $group['name']; ?></option>
                      <?php foreach ($group['list'] as $k => $attribute) { ?>
                      <?php if ( $attribute['enable'] == 1 ) { ?>
                        <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <a href="#">характеристики фурнитуры</a>
                  </div>
                  <?php } ?>

                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="add-order">
          <div class="container">
            <h3 class="product-card-title">Добавить к заказу</h3>

            <?php $group = $group_list[10]; // Подоконник ?>
            <?php if ( $group['enable'] == 1 ) { ?>
            <div class="info-select">
              <select class="select" name="<?php echo $group['attribute_group_id']; ?>">
                <option disabled selected><?php echo $group['name']; ?></option>
                <?php foreach ($group['list'] as $k => $attribute) { ?>
                <?php if ( $attribute['enable'] == 1 ) { ?>
                  <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <a href="#">посмотреть цвета подоконников</a>
            </div>
            <?php } ?>

            <div class="counts">
              <div class="first-count">
                <p>Размер подоконника</p>
                <div class="sizes-group">
                  <label for="height2">Высота, см</label>
                  <input id="height2" type="text" class="form-controll" value="0">
                </div>
                <div class="sizes-group">
                  <label for="width2">Ширина, см</label>
                  <input id="width2" type="text" class="form-controll" value="0">
                </div>
              </div>
              <div class="second-count">
                <p>Количество окон</p>
                <div class="second-count-input">
                  <a href="#" class="second-count-btn btn-prev">-</a>
                  <input type="number" value="1">
                  <a href="#" class="second-count-btn btn-next">+</a>
                </div>
              </div>
            </div>
            <div class="add-order-dop">
              <div class="checkbox">
                <input id="c1" type="checkbox" checked>
                <label for="c1">Отлив</label>
              </div>
              <div class="checkbox">
                <input id="c2" type="checkbox" checked>
                <label for="c2">Монтаж</label>
              </div>
              <div class="checkbox">
                <input id="c3" type="checkbox" checked>
                <label for="c3">Москитная сетка</label>
              </div>
              <div class="checkbox">
                <input id="c4" type="checkbox" checked>
                <label for="c4">Откосы</label>
              </div>
            </div>
            <div class="add-order-fav">
              <a href="#" class="link favorite-link" onclick="wishlist.add('<?php echo $product_id; ?>');return false;"><?php echo $button_wishlist; ?></a>
              <a href="#" class="link brand-link" onclick="compare.add('<?php echo $product_id; ?>');return false;"><?php echo $button_compare; ?></a>
              <button type="submit" class="link-price green-btn">Узнать стоимость</button>
            </div>
          </div>
        </section>
        <section class="tech">
          <div class="container">
            <div class="row">
              <div class="col-md-8">
                <div class="char">
                  <h3 class="product-card-title">Технические характеристики</h3>
                  <table class="tech-table">
                    <tbody>
                      <tr>
                        <td>Вид</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Стеклопакет</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Монтажная глубина</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Профильная система</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Цвет</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Камерность профиля</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Толщина стеклопакета</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Фуртитура</td>
                        <td>2279</td>
                      </tr>
                      <tr>
                        <td>Коэффициент теплопередачи</td>
                        <td>2279</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="col-md-4">
                <div class="desc">
                  <h3 class="product-card-title">Описание</h3>
                  <p>Металлопластиковые системы Veka Euroline представляют собой трехкамерный профиль с оптимальными характеристиками. Он лучшим образом подойдет для качественного и одновременно экономного остекления любых помещений и балконов. При глубине монтажа 58 мм рамы способны вмещать стеклоблоки до 32 мм.</p>
                </div>
              </div>
            </div>
          </div>
        </section>
      </form>
      <section class="similar-product">
        <div class="container">
          <h2 class="main-title">Похожие товары</h2>
          <div class="slider">
            <div class="owl-nav navs">
              <a href="#" class="owl-prev similar-next prev"><span></span></a>
              <a href="#" class="owl-next similar-prev next"><span></span></a>
            </div>
            <div class="similar-product-slider owl-carousel">
              <div class="item">
                <div class="favorites-single">
                  <div class="img">
                    <img src="img/f1.jpg" alt="">
                  </div>
                  <p class="name">Окно арочное из ПВХ,1800х1400</p>
                  <a href="#" class="favorite-link">В избранное</a>
                  <a href="#" class="more green-btn">пОДРОБНЕЕ</a>
                </div>
              </div>
              <div class="item">
                <div class="favorites-single">
                  <div class="img">
                    <img src="img/f1.jpg" alt="">
                  </div>
                  <p class="name">Окно арочное из ПВХ,1800х1400</p>
                  <a href="#" class="favorite-link">В избранное</a>
                  <a href="#" class="more green-btn">пОДРОБНЕЕ</a>
                </div>
              </div>
              <div class="item">
                <div class="favorites-single">
                  <div class="img">
                    <img src="img/f1.jpg" alt="">
                  </div>
                  <p class="name">Окно арочное из ПВХ,1800х1400</p>
                  <a href="#" class="favorite-link">В избранное</a>
                  <a href="#" class="more green-btn">пОДРОБНЕЕ</a>
                </div>
              </div>
              <div class="item">
                <div class="favorites-single">
                  <div class="img">
                    <img src="img/f1.jpg" alt="">
                  </div>
                  <p class="name">Окно арочное из ПВХ,1800х1400</p>
                  <a href="#" class="favorite-link">В избранное</a>
                  <a href="#" class="more green-btn">пОДРОБНЕЕ</a>
                </div>
              </div>
            </div>
          </div>
        </div>


<div class="container" style="display: none;">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
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
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>                    
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <!-- Button fastorder -->
              <?php  echo $fastorder;?>
              <!-- END :  button fastorder -->
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-xs-8 col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-xs-6 col-md-4'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-6 col-sm-3'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($j = 1; $j <= 5; $j++) { ?>
                <?php if ($product['rating'] < $j) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
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
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif (($i+1) % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>


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
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

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
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

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
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
