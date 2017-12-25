<?php echo $header; ?>
<section class="brand">
  <div class="breadcrumbs">
    <div class="container">
      <ul class="breadcrumbs-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="brand-main">
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
          <h1 class="main-title"><?php echo $heading_title; ?></h1>
          <?php if ($description) { ?>
          <div class="row">
            <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <?php if ($short_description) { ?>
            <div class="col-sm-10"><?php echo $short_description; ?></div>
            <?php } ?>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>

  <div class="brand-text">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <?php if ($description) { ?>
            <div class="col-sm-10"><?php echo $description; ?></div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>

  <div class="brand-info">
    <div class="container">
      <div class="news-nav">
        <?php //foreach ($variable as $key => $value) { ?>

        <?php //} ?>
        <a href="#" class="active left">veka euroline</a>
        <a href="#" class="center">veka softline</a>
        <a href="#" class="right">veka softline 82</a>
      </div>
      <div class="col-md-7">
        <div class="brand-info-img">
          <img src="/catalog/view/theme/default/image/veka-euroline-58.jpg" alt="">
        </div>
      </div>
      <div class="col-md-5">
        <div class="brand-info-block">
          <h3>Veka Euroline – трехкамерная экономия</h3>
          <p>Металлопластиковые системы Veka Euroline представляют собой трехкамерный профиль с оптимальными характеристиками. Он лучшим образом подойдет для качественного и одновременно экономного остекления любых помещений и балконов. При глубине монтажа 58 мм рамы способны вмещать стеклоблоки до 32 мм. В числе главных преимуществ Veka Euroline:</p>
        </div>
      </div>
      <div class="col-md-7">
        <div class="brand-info-block">
          <h3 class="charact">Технические характеристики</h3>
          <table class="brand-info-table">
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
      <div class="col-md-5">
        <div class="brand-info-block">
          <h3 class="star">Преимущество окон VEKA</h3>
          <ul class="circle-list">
            <li>Доступность цены. При этом даже в бюджетном варианте окна Века будут оставаться престижным выбором.</li>
            <li>Легкий вес систем ПВХ. Этот фактор может стать решающим в вопросе остекления балконов старых домов.</li>
            <li>Отличная статичность. Жесткость конструкций обеспечивается замкнутым армированием.</li>
            <li>Достойная тепло-, звукоизоляция и герметичность.</li>
          </ul>
        </div>
        <div class="brand-info-block">
          <h3 class="add">Дополнительная комплектация</h3>
          <ul class="check-list">
            <li>Подоконник 26 см - 106 грн</li>
            <li>Отлив 15 см - 70 грн</li>
            <li>Москитная сетка - 120 грн</li>
            <li>Установка окна 486 грн</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>

<?php if ( count($categorys) > 0 ) { ?> 
<section class="prices brand-prices">
  <div class="container">
    <div class="prices-type">
      <p class="bold">ЦЕНЫ:</p>
      <ul>
        <?php foreach($categorys as $category_id => $category_info){ ?>
        <li><a href="#tab_<?php echo $category_info['category_id']; ?>" data-toggle="tab"><?php echo $category_info['name']; ?></a></li>
        <?php } ?>
      </ul>
      <p>*Цены без установки</p>
    </div>
    <div class="tab-content">
      <?php foreach($categorys as $category_id => $category_info){ ?>
      <div class="tab-pane" id="tab_<?php echo $category_info['category_id']; ?>">
        <div class="prices-single">
          <div class="row">
            <div class="col-md-3">
              <div class="prices-single-img">
                <img src="/image/<?php echo $category_info['image']; ?>" alt="">
              </div>
            </div>
            <div class="col-md-6">
              <table class="prices-single-table">
                <thead>
                  <tr>
                    <th>Система</th>
                    <th>1-камерый</th>
                    <th>2-камерный</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach($category_info['products'] as $product_id){ ?>
                  <tr>
                    <td><?php echo $products[$product_id]['name']; ?></td>
                    <td><?php
                      if ( isset($products[$product_id]['option'][0]['product_option_value'][0]) ) {
                        $opt = $products[$product_id]['option'][0]['product_option_value'][0];
                        // var_dump($products[$product_id], $opt);
                        if ( $opt['price'] ) {
                          if ( $opt['price_prefix'] == '+' ) {
                            echo str_replace(' грн.', '', $products[$product_id]['price']) + str_replace(' грн.', '', $opt['price']).' грн';
                          } else {
                            echo str_replace(' грн.', '', $products[$product_id]['price']) - str_replace(' грн.', '', $opt['price']).' грн';
                          }
                        } else {
                          echo $products[$product_id]['price'];
                        }
                      }?></td>
                    <td><?php
                      if ( isset($products[$product_id]['option'][0]['product_option_value'][1]) ) {
                        $opt = $products[$product_id]['option'][0]['product_option_value'][1];
                        // var_dump($products[$product_id], $opt);
                        if ( $opt['price'] ) {
                          if ( $opt['price_prefix'] == '+' ) {
                            echo str_replace(' грн.', '', $products[$product_id]['price']) + str_replace(' грн.', '', $opt['price']).' грн';
                          } else {
                            echo str_replace(' грн.', '', $products[$product_id]['price']) - str_replace(' грн.', '', $opt['price']).' грн';
                          }
                        } else {
                          echo $products[$product_id]['price'];
                        }
                      }?></td>

                  </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <div class="col-md-3">
              <div class="prices-single-right">
                <?php echo $category_info['description']; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
</section>
<?php } ?>


          <?php if (false) { //($products) { ?>
          <div class="row">
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
          <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="product-layout product-list col-xs-12">
              <div class="product-thumb">
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
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          </div>
          <?php } // else { ?>
          <!-- <p><?php echo $text_empty; ?></p>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div> -->
          <?php // } ?>

</section>

<?php echo $column_right; ?>
<?php echo $content_bottom; ?>

<script>
$('.prices-type li:first a').tab('show');
</script>

<?php echo $footer; ?>