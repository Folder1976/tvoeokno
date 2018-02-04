<?php
  $lands = array(
                'Фильтр' => 'Фільтр',
                'ПОДРОБНЕЕ' => 'ДЕТАЛЬНІШЕ',
                 'Проверенные бренды' => 'Відомі бренди',
                'Получить скидку' => 'Отримати знижку',
                'цены на окна' => 'ціни на вікна',
                'ЦЕНЫ' => 'ЦІНИ',
                '*Цены без установки' => '* Ціни без установки',
                'Система' => 'Система',
                '1-камерый' => '1-коморний',
                '2-камерый' => '2-коморний',
                'новости' => 'новини',
                'все акции' => 'всі акції',
                'Клиенты о НАС' => 'Клієнти про нас',
                'все отзывы' => 'всі відгуки',
                'Оставить отзыв' => 'Залишити відгук',
                'Имя' => 'Ім\'я',
                'Номер договору' => 'Номер договору',
                'Ваш отзыв' => 'Ваш відгук',
                'Отправить' => 'Відправити',
                'Остались вопросы?' => 'Залишилися питання?',
                '— Задайте их нам :)' => '— Задайте їх нам :)',
                'Ваше имя' => 'Ваше Ім\'я',
                'Номер телефона' => 'Номер телефону',
                'Отправить' => 'Відправити',
                'Больше' => 'Більше',
                'подробнее' => 'детальніше',
                'экспресс расчет ваших окон' => 'експрес розрахунок ваших вікон',
                'Ваш номер' => 'Ваш номер',
                'Прикрепить файл' => 'Прикріпити файл',
                'Перезвонить' => 'Передзвонити',
                 'Отправить' => 'Надiслати',
                'все о гарантии' => 'все про гарантії',
                'garantiya' => 'uk/garantiya',
                'Номер договора' => 'Номер договору',
                'Двухстворчатое окно' => 'Двухстворчате вікно',
                'Трехстворчатое окно' => 'Трйохстворчате вікно',
                'Балконный блок' => 'Балконний блок',
                'Остекление лоджии' => 'Скління лоджії',
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


<?php $column_left = false; ?>
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
        <?php if ( !empty($tab1) || !empty($tab2) || !empty($tab3) ) { ?>
        <ul>
          <?php if ( !empty($tab1) ) { ?>
          <li><a href="#tab1" class="left" data-toggle="tab"><?php echo $tab1; ?></a></li>
          <?php } ?>

          <?php if ( !empty($tab2) ) { ?>
          <li><a href="#tab2" class="center" data-toggle="tab"><?php echo $tab2; ?></a></li>
          <?php } ?>

          <?php if ( !empty($tab3) ) { ?>
          <li><a href="#tab3" class="right" data-toggle="tab"><?php echo $tab3; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <div class="tab-content">
        <?php if ( !empty($tab1) || !empty($tab2) || !empty($tab3) ) { ?>

          <?php if ( !empty($tab1) ) { ?>
          <div class="tab-pane" id="tab1">
            <?php if ( !empty($image1) ) { ?>
            <div class="col-md-7">
              <div class="brand-info-img">
                <img src="/image/<?php echo $image1; ?>" alt="">
              </div>
            </div>
            <?php } ?>

            <?php echo $tab_description1; ?>
          </div>
          <?php } ?>

          <?php if ( !empty($tab2) ) { ?>
          <div class="tab-pane" id="tab2">
            <?php if ( !empty($image2) ) { ?>
            <div class="col-md-7">
              <div class="brand-info-img">
                <img src="/image/<?php echo $image2; ?>" alt="">
              </div>
            </div>
            <?php } ?>

            <?php echo $tab_description2; ?>
          </div>
          <?php } ?>

          <?php if ( !empty($tab3) ) { ?>
          <div class="tab-pane" id="tab3">
            <?php if ( !empty($image3) ) { ?>
            <div class="col-md-7">
              <div class="brand-info-img">
                <img src="/image/<?php echo $image3; ?>" alt="">
              </div>
            </div>
            <?php } ?>

            <?php echo $tab_description3; ?>
          </div>
          <?php } ?>

        <?php } ?>
      </div>
    </div>
  </div>
</section>

<?php if ( count($tab_categorys) > 0 ) { ?> 
<section class="prices brand-prices">
  <div class="container">
    <div class="prices-type">
      <p class="bold"><?php echo $lib['ЦЕНЫ']; ?>:</p>
        <ul>
            <li><a href="#tab_1" data-toggle="tab"><?php echo $lib['Двухстворчатое окно']; ?></a></li>
            <li><a href="#tab_2" data-toggle="tab"><?php echo $lib['Трехстворчатое окно']; ?></a></li>
            <li><a href="#tab_3" data-toggle="tab"><?php echo $lib['Балконный блок']; ?></a></li>
            <li><a href="#tab_4" data-toggle="tab"><?php echo $lib['Остекление лоджии']; ?></a></li>
        </ul>
      <p>*Цены без установки</p>
    </div>
    <div class="tab-content">
        <?php foreach($tab_categorys as $category_id => $category_info){ ?>
        <div class="tab-pane" id="tab_<?php echo $category_id; ?>">
          <div class="prices-single">
            <div class="row">
              <div class="col-md-3">
                <div class="prices-single-img">
                  <img src="<?php echo $category_info['thumb']; ?>" alt="<?php echo $category_info['alt']; ?>" title="<?php echo $category_info['title']; ?>">
                </div>
              </div>
              <div class="col-md-6">
                <table class="prices-single-table">
                  <thead>
                    <tr>
                      <th><?php echo $lib['Система']; ?></th>
                      <th><?php echo $lib['1-камерый']; ?></th>
                      <th><?php echo $lib['2-камерый']; ?></th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach($category_info['product_tables'] as $row){ ?>
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
                    <h3>Комплектация к окну</h3>
                    <?php foreach($category_info['addons'] as $row){ ?>
                      <p><?php echo $row['text'] ;?> - <?php echo $row['price'] ;?> грн</p>
                    <?php } ?>
                  </div>
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
</section>

<script>
$('.js-filter-remove').on('click', function(){
  var id_filter = $(this).data('id');
  $(':checkbox[name*=filter][value='+id_filter+']').removeAttr('checked');
  $(this).remove();
  $('#button-filter').click();
});
</script>
<script>
$('.news-nav li:first a').tab('show');
$('.prices-type li:first a').tab('show');
</script>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
