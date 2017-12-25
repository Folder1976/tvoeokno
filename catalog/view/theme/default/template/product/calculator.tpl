<?php echo $header; ?>
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

  <h1 class="main-title">Калькулятор окон ONLINE</h1>
  <div class="window">
    <div class="container">
      <div class="row">
        <div class="col-md-2 col-sm-3">
          <div class="window-type">
            <a href="#" class="window-type-single active">
              <img src="/design/img/w1.png" alt="">
            </a>
            <a href="#" class="window-type-single">
              <img src="/design/img/w1.png" alt="">
            </a>
            <a href="#" class="window-type-single">
              <img src="/design/img/w1.png" alt="">
            </a>
            <a href="#" class="window-type-single">
              <img src="/design/img/w1.png" alt="">
            </a>
          </div>
        </div>
        <div class="col-md-5 col-md-offset-0 col-sm-offset-1 col-sm-8">
          <div class="window-size">
            <div id="height-slider" class="height-slider"></div>
            <img src="/design/img/window.png" alt="">
            <div class="window-size-bottom">
              <div id="width-slider" class="width-slider"></div>
              <div class="counts">
                <div class="count">
                  <p class="first">Высота, см</p>
                  <p class="second">2400</p>
                </div>
                <div class="count">
                  <p class="first">Ширина, см</p>
                  <p class="second">0</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-5 col-sm-12">
          <div class="window-offers">
            <form action="/" class="window-offers-form js-form-call-me">
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
                <input id="label1" type="checkbox" checked>
                <label for="label1">Монтаж/демонтаж</label>
              </div>
              <div class="checkbox">
                <input id="label2" type="checkbox" checked>
                <label for="label2">Москитная сетка</label>
              </div>
              <p class="price" style="display: none">Стоимость: <span>2957 грн</span></p>
              <button type="submit" class="red-btn">выслать на рассчет</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="how-to-count">
  <div class="container">
    <h2 class="main-title">как посчитать цену своего окна</h2>
    <div class="how-to-count-single">
      <span>1</span>
      <p>Выберите нужную конструкцию</p>
    </div>
    <div class="how-to-count-single">
      <span>2</span>
      <p>Введите ее ширину и высоту</p>
    </div>
    <div class="how-to-count-single">
      <span>3</span>
      <p>Также при необходимости выберите подоконник, <br> отлив, москитную сетку и монтаж.</p>
    </div>
    <div class="how-to-count-single">
      <span>4</span>
      <p>В списке опций справа от окна выберите систему <br> окон, фурнитуру, стеклопакет</p>
    </div>
    <div class="how-to-count-single">
      <span>5</span>
      <p>Стоимость окна готова!</p>
    </div>
  </div>
</section>



<?php echo $column_right; ?>
<?php echo $content_bottom; ?>

<?php echo $footer; ?>