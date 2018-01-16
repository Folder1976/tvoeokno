<?php
  $lands = array(
                'Сделать расчет окон' => 'Зробити розрахунок вікон',
                'Высота' => 'Висота',
                'Ширина' => 'Ширина',
                'Монтаж/демонтаж' => 'Монтаж/Демонтаж',
                'Москитная сетка' => 'Москітна сітка',
                'Стоимость' => 'Вартість',
                'выслать на расчет' => 'вислати на розрахунок',
                'как посчитать цену своего окна' => 'як порахувати ціну свого вікна',
                'Выберите нужную конструкцию' => 'Виберіть потрібну конструкцію',
                'Введите ее ширину и высоту' => 'Введіть її ширину і висоту',
                'Также при необходимости выберите подоконник' => 'Також при необхідності виберіть підвіконня',
                'отлив, москитную сетку и монтаж' => 'відлив, москітну сітку і монтаж',
                'В списке опций справа от окна выберите систему' => 'У списку опцій праворуч від вікна виберіть систему',
                'окон, фурнитуру, стеклопакет' => 'вікон, фурнітуру, склопакет',
                'мы с вами свяжемся как можно быстрее!' => 'ми з вами зв\'яжемося якомога швидше!',
                '' => '',
                '' => '',
                );
 $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
    //Пример
    //<?php echo $lib['русская фраза']; ? >
echo $header; ?>
<style>
.main-sect { display: none; }
</style>

<section class="calc-page">
  <div class="breadcrumbs">
    <div class="container">
      <ul class="breadcrumbs-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <h1 class="main-title"><?php echo $lib['Сделать расчет окон']; ?></h1>
  <form action="/" class="js-form-call-me">
  <div class="window">
    <div class="container">
      <div class="row">
        <div class="col-md-2 col-sm-3">
          <input type="hidden" name="window-type-s" id="window-type-s" value="scheme-1">
          <input type="hidden" name="window-type" id="window-type" value="/catalog/view/theme/default/image/calc/scheme-1.gif">
          <div class="window-type">
            <a href="javascript:void(0)" class="window-type-single active js-window-type-single">
              <img src="/catalog/view/theme/default/image/calc/scheme-1.gif" alt="scheme-1">
              <ul>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-1.gif" alt="scheme-1" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme1.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-2.gif" alt="scheme-2" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme2.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-3.gif" alt="scheme-3" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme3.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-14.gif" alt="scheme-14" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme14.jpg"></li>
              </ul>
            </a>
            <a href="javascript:void(0)" class="window-type-single js-window-type-single">
              <img src="/catalog/view/theme/default/image/calc/scheme-6.gif" alt="scheme-6">
              <ul>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-4.gif" alt="scheme-4" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme4.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-5.gif" alt="scheme-5" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme5.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-6.gif" alt="scheme-6" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme6.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-7.gif" alt="scheme-7" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme7.jpg"></li>
              </ul>
            </a>
            <a href="javascript:void(0)" class="window-type-single js-window-type-single">
              <img src="/catalog/view/theme/default/image/calc/scheme-9.gif" alt="scheme-9">
              <ul>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-8.gif" alt="scheme-8" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme8.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-9.gif" alt="scheme-9" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme9.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-10.gif" alt="scheme-10" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme10.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-11.gif" alt="scheme-11" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme11.jpg"></li>
              </ul>
            </a>
            <a href="javascript:void(0)" class="window-type-single js-window-type-single">
              <img src="/catalog/view/theme/default/image/calc/scheme-12.gif" alt="scheme-12">
              <ul>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-12.gif" alt="scheme-12" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme12.jpg"></li>
                <li><img src="/catalog/view/theme/default/image/calc/scheme-13.gif" alt="scheme-13" data-main-img="/catalog/view/theme/default/image/calc/main/window-scheme13.jpg"></li>
              </ul>
            </a>
          </div>
        </div>
        <div class="col-md-5 col-md-offset-0 col-sm-offset-1 col-sm-8">
          <div class="window-size">
            <div id="height-slider" class="height-slider"></div>
            <img src="/catalog/view/theme/default/image/calc/main/window-scheme1.jpg" alt="" id="main-type-img">
            <div class="window-size-bottom">
              <div id="width-slider" class="width-slider"></div>
              <div class="counts">
                <div class="count">
                  <p class="first"><?php echo $lib['Высота']; ?>, см</p>
                  <input type="number" name="height_window" step="1" id="height_window_input">
                </div>
                <div class="count">
                  <p class="first"><?php echo $lib['Ширина']; ?>, см</p>
                  <input type="number" name="width_window" step="1" id="width_window_input">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-5 col-sm-12">
          <div class="window-offers">
            <div class="window-offers-form">
              <input name="formname" value="calculator" type="hidden">

              <?php foreach ($group_list as $key => $group) { ?>
              <?php if ( $group['enable'] == 1 ) { ?>
                <select class="select" name="<?php echo $group['attribute_group_id']; ?>">
                  <option disabled selected><?php echo $group['name']; ?></option>
                  <?php foreach ($group['list'] as $k => $attribute) { ?>
                  <?php if ( $attribute['enable'] == 1 ) { ?>
                    <option value="<?php echo $attribute['attribute_id'] ; ?>"><?php echo $attribute['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              <?php } ?>
              <?php } ?>

              <div class="checkbox">
                <input id="label1" type="checkbox" name="montage" checked>
                <label for="label1"><?php echo $lib['Монтаж/демонтаж']; ?></label>
              </div>
              <div class="checkbox">
                <input id="label2" type="checkbox" name="moskito" checked>
                <label for="label2"><?php echo $lib['Москитная сетка']; ?></label>
              </div>
              <div class="text-input">
                <input placeholder="Ваше имя" name="name" type="text">
              </div>
              <div class="text-input">
                <input placeholder="Номер телефона" name="phone" required="" type="text">
              </div>
              <div class="text-input">
                <input placeholder="E-mail" name="email" type="text">
              </div>
              <p class="price" style="display: none"><?php echo $lib['Стоимость']; ?>: <span>2957 грн</span></p>
              <button type="submit" class="red-btn"><?php echo $lib['выслать на расчет']; ?></button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </form>
</section>

<section class="how-to-count">
  <div class="container">
    <h2 class="main-title"><?php echo $lib['как посчитать цену своего окна']; ?></h2>
    <div class="how-to-count-single">
      <span>1</span>
      <p><?php echo $lib['Выберите нужную конструкцию']; ?></p>
    </div>
    <div class="how-to-count-single">
      <span>2</span>
      <p><?php echo $lib['Введите ее ширину и высоту']; ?></p>
    </div>
    <div class="how-to-count-single">
      <span>3</span>
      <p><?php echo $lib['Также при необходимости выберите подоконник']; ?>, <br> <?php echo $lib['отлив, москитную сетку и монтаж']; ?>.</p>
    </div>
    <div class="how-to-count-single">
      <span>4</span>
      <p><?php echo $lib['В списке опций справа от окна выберите систему']; ?> <br> <?php echo $lib['окон, фурнитуру, стеклопакет']; ?></p>
    </div>
    <div class="how-to-count-single">
      <span>5</span>
      <p><?php echo $lib['мы с вами свяжемся как можно быстрее!']; ?></p>
    </div>
  </div>
</section>

<script>
$('.js-window-type-single').on('click', function(){
  if ( $(this).hasClass('open') ) {
    $(this).removeClass('open');
  } else {
    $('.js-window-type-single').removeClass('open');
    $(this).addClass('open');
  }
});

$('.js-window-type-single').on('click', 'img', function(){
  var img_main_src = $(this).data('main-img');
  var img_tmbl_src = $(this).attr('src');
  var img_tmbl = $(this).closest('.js-window-type-single').children('img');
  var val = $(this).attr('alt');
  var src = $(this).attr('src');


  if ( img_main_src ) {
    $('.js-window-type-single').removeClass('active');
    $(this).closest('.js-window-type-single').addClass('active');
    $('#main-type-img').attr('src', img_main_src);
    img_tmbl.attr('src', img_tmbl_src);
    $('#window-type-s').val(val);
    $('#window-type').val(src);
    
    console.log($('#window-type-s').val());
    console.log($('#window-type').val());
  }
});

$(document).mouseup(function (e){
    if ( $(e.target).closest('.js-window-type-single').length === 0 ) {
        $('.js-window-type-single').removeClass('open');
    }
});
</script>

<?php echo $column_right; ?>
<?php echo $content_bottom; ?>

<?php echo $footer; ?>