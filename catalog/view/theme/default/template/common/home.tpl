<?php
  $lands = array(
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
                'все о гарантии' => 'все про гарантії',
                'Номер договора' => 'Номер договору'
                );
 $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
    //Пример
    //<?php echo $lib['русская фраза']; ? >
 $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = UA_URL;}
    
echo $header; ?>

 <div class="main-slider owl-carousel">
      <div class="item" style="background: url(/catalog/view/theme/default/image/slider1.png) no-repeat center; background-size: cover;">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <div class="main-slider-info">
                <h2>“Твое окно” — весь спектр услуг, от продажи до сервиса</h2>
                <p>Только до <span>5 октября</span> скидка <span>-10%</span> на пластиковые окна фирмы WDS</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="timer">
                <div class="timer-main">
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">дней</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">часов</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">минут</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">секунд</p>
                  </div>
                </div>
                <form action="/<?php echo $dir; ?>" class="timer-form js-form-call-me">
                  <input type="hidden" name="formname" value="call_me__home_slider_discount">
                  <input type="text" placeholder="Ваше имя" name="name" required>
                  <input type="tel" placeholder="Ваш телефон" name="phone" required>
                  <button class="green-btn"><?php echo $lib['Получить скидку']; ?></button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="item" style="background: url(/catalog/view/theme/default/image/slider1.png) no-repeat center; background-size: cover;">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <div class="main-slider-info">
                <h2>“Твое окно” — весь спектр услуг, от продажи до сервиса</h2>
                <p>Только до <span>5 октября</span> скидка <span>-10%</span> на пластиковые окна фирмы WDS</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="timer">
                <div class="timer-main">
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">дней</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">часов</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">минут</p>
                  </div>
                  <div class="timer-main-single">
                    <p class="count">04</p>
                    <p class="type">секунд</p>
                  </div>
                </div>
                <form action="/<?php echo $dir; ?>" class="timer-form js-form-call-me">
                  <input type="hidden" name="formname" value="call_me__home_slider_discount">
                  <input type="text" placeholder="Ваше имя" name="name" required>
                  <input type="tel" placeholder="Ваш телефон" name="phone" required>
                  <button class="green-btn"><?php echo $lib['Получить скидку']; ?></button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="brands">
    <div class="container">
      <h2 class="main-title"><?php echo $lib['Проверенные бренды']; ?></h2>
      <div class="row">

        <?php foreach($manufacturers as $manufacture){ ?>
          <div class="col-md-3 col-sm-4">
            <a href="/<?php echo $manufacture['keyword'];?>" class="brands-single">
              <img src="/image/<?php echo $manufacture['image'];?>" alt="Бренд <?php echo $manufacture['name'];?>">
            </a>
          </div>
        <?php } ?>
      </div>
    </div>
  </section>
  <pre><?php //var_dump(get_defined_vars()); ?></pre>
  <section class="prices">
    <div class="container">
      <h2 class="main-title"><?php echo $lib['цены на окна']; ?></h2>
      <div class="prices-type">
        <p class="bold"><?php echo $lib['ЦЕНЫ']; ?>:</p>
        <ul>
          <?php foreach($categorys as $category_id => $category_info){ ?>
          <?php if ( is_numeric($category_id) ) { ?>
            <li><a href="#tab_<?php echo $category_info['category_id']; ?>" data-toggle="tab"><?php echo $category_info['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <p><?php echo $lib['*Цены без установки']; ?></p>
      </div>
      <div class="tab-content">
        <?php foreach($categorys as $category_id => $category_info){ ?>
        <div class="tab-pane" id="tab_<?php echo $category_info['category_id']; ?>">
          <div class="prices-single">
            <div class="row">
              <div class="col-md-3">
                <div class="prices-single-img">
                  <img src="/catalog/view/theme/default/image/window.png" alt="">
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
                          // var_dump($products[$product_id]['price'], $opt['price']);
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
  <section class="advantages">
  
    <div class="container">
      <h2 class="main-title"><?php echo $blogs[49]['name'];?></h2>
      <div class="row">
        <?php foreach($blogs[49]['blogs'] as $blog){ ?>
          <div class="col-md-3 col-sm-6">
            <div class="advantages-single">
              <img src="/image/<?php echo $blog['image'];?>" alt="Картинка <?php echo $blog['title'];?>">
              <h3><?php echo $blog['title'];?></h3>
              <p><?php echo $blog['short_description'];?></p>
            </div>
          </div>
        <?php } ?>
      </div>
    </div>
  </section>
  <section class="news">
    <div class="container">
      <div class="news-nav">
        <a href="#tab-actions" class="active left" data-toggle="tab"><?php echo $blogs[50]['name']; ?></a>
        <a href="#tab-news" class="right" data-toggle="tab"><?php echo $lib['новости']; ?></a>
      </div>
      <div class="row news-tab active" id="tab-actions">
        <div class="col-md-7">
          <div class="news-single">
            <img src="/image/<?php echo $blogs[50]['blogs'][0]['image']; ?>" alt="">
            <div class="news-single-content">
              <h2><?php
                if ( empty($blogs[50]['blogs'][0]['description']) ) {
                  echo $blogs[50]['blogs'][0]['title'];
                } else {
                  echo '<a href="/'.$blogs[50]['blogs'][0]['keyword'].'">'.$blogs[50]['blogs'][0]['title'].'</a>';
                } ?></h2>
              <p><?php echo $blogs[50]['blogs'][0]['short_description']; ?></p>
              <span class="time"><?php echo $blogs[50]['blogs'][0]['date_added']; ?></span>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <?php $blogs_action = array_slice($blogs[50]['blogs'], 1, 3); ?>
          <?php foreach ($blogs_action as $key => $post) { ?>
          <div class="news-single">
            <div class="news-single-content">
              <h2><?php
                if ( empty($post['description']) ) {
                  echo $post['title'];
                } else {
                  echo '<a href="/'.$post['keyword'].'">'.$post['title'].'</a>';
                } ?></h2>
              <p><?php echo $post['short_description']; ?></p>
              <span class="time"><?php echo $post['date_added']; ?></span>
            </div>
          </div>
          <?php } ?>
          <div class="news-btn">
            <a href="/<?php echo $blogs[50]['keyword']; ?>" class="red-btn"><?php echo $lib['все акции']; ?></a>
          </div>
        </div>
      </div>
      <div class="row news-tab" id="tab-news">
        <div class="col-md-7">
          <div class="news-single">
            <img src="/image/<?php echo $blogs[54]['blogs'][0]['image']; ?>" alt="">
            <div class="news-single-content">
              <h2><?php
                if ( empty($blogs[54]['blogs'][0]['description']) ) {
                  echo $blogs[54]['blogs'][0]['title'];
                } else {
                  echo '<a href="/'.$blogs[54]['blogs'][0]['keyword'].'">'.$blogs[54]['blogs'][0]['title'].'</a>';
                } ?></h2>
              <p><?php echo $blogs[54]['blogs'][0]['short_description']; ?></p>
              <span class="time"><?php echo $blogs[54]['blogs'][0]['date_added']; ?></span>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <?php $blogs_action = array_slice($blogs[54]['blogs'], 1, 3); ?>
          <?php foreach ($blogs_action as $key => $post) { ?>
          <div class="news-single">
            <div class="news-single-content">
              <h2><?php
                if ( empty($post['description']) ) {
                  echo $post['title'];
                } else {
                  echo '<a href="/'.$post['keyword'].'">'.$post['title'].'</a>';
                } ?></h2>
              <p><?php echo $post['short_description']; ?></p>
              <span class="time"><?php echo $post['date_added']; ?></span>
            </div>
          </div>
          <?php } ?>
          <div class="news-btn">
            <a href="/<?php echo $blogs[54]['keyword']; ?>" class="red-btn"><?php echo $lib['все акции']; ?></a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <?php echo $modules['html-33']; ?>

  <section class="certificates">
    <div class="container-fluid">
      <h2 class="main-title"><?php echo $blogs[52]['name'];?></h2>
      <div class="row">
        <?php $blogs_action = array_shift($blogs[52]['blogs']); ?>
        <div class="col-md-4 col-md-offset-1">
          <div class="certificates-info">
            <?php if($language_id == 1){ ?>
              <img src="/catalog/view/theme/default/image/guarantee.png" alt="5 лет гарантии" class="guarantee">
            <?php }else{ ?>
              <img src="/catalog/view/theme/default/image/guarantee_ua.png" alt="5 років гарантії" class="guarantee">
            <?php } ?>
            <h3><?php echo $blogs_action['title']; ?></h3>
            <p><?php echo $blogs_action['description']; ?></p>
            <a href="/returns_and_guarantees" class="green-btn"><?php echo $lib['все о гарантии']; ?></a>
          </div>
        </div>
        <div class="col-md-7">
          <div class="certificates-slider owl-carousel">

            <?php foreach($banner_sertificate as $banner){ ?>
              <div class="item">
                <a href="javascript:;">
                  <img src="/image/<?php echo $banner['image']; ?>" alt="">
                </a>
              </div>
            <?php } ?>

          </div>
          <div class="owl-nav navs">
            <a href="#" class="owl-prev prev"><span></span></a>
            <a href="#" class="owl-next next"><span></span></a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="clients">
    <ul id="scene" class="scene">
      <li class="layer" data-depth="0.6"><img src="/catalog/view/theme/default/image/200.png" alt=""></li>
      <li class="layer" data-depth="0.8"><img src="/catalog/view/theme/default/image/201.png" alt=""></li>
    </ul>
    <div class="container clients-review">
      
      <h2 class="main-title"><?php echo $lib['Клиенты о НАС'];?></h2>
      <div class="row">
        <div class="col-md-6 col-md-offset-1">
          <div class="review">
            <div class="review-slider owl-carousel">
              <?php foreach ($comments as $comment) { ?>
              <div class="item">
                <div class="review-single">
                  <p><?php echo $comment['comment']; ?></p>
                  <div class="bottom">
                    <p class="date"><?php //echo $comment['date_added']; ?></p>
                    <p class="name"><?php echo $comment['name']; ?></p>
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
            <div class="review-btn">
              <div class="owl-nav navs">
                <a href="#" class="owl-prev2 prev"><span></span></a>
              </div>
              <a href="/comments" class="review-btn-main purple-btn"><?php echo $lib['все отзывы'];?></a>
              <div class="owl-nav navs">post
                <a href="#" class="owl-next2 next"><span></span></a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <form action="/<?php echo $dir; ?>" class="review-form" id="comment_form">
            <h3><?php echo $lib['Оставить отзыв'];?></h3>
            <input type="text" placeholder="<?php echo $lib['Имя'];?>" name="name" required>
            <input type="text" placeholder="<?php echo $lib['Номер договора'];?>" name="email">
            <textarea placeholder="<?php echo $lib['Ваш отзыв'];?>" name="comment" required></textarea>

            <!--input type="hidden" name="email" value="test@test.com"-->
            <input type="hidden" name="captcha_comment">
            <button id="button-comment" class="blue-btn"><?php echo $lib['Отправить'];?></button>
          </form>
        </div>
      </div>
    </div>
  </section>
  <section class="feedback-sect">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <img src="/catalog/view/theme/default/image/woman.png" alt="">
        </div>
        <div class="col-md-5">
          <div class="feedback-sect-head">
            <h2><?php echo $lib['Остались вопросы?'];?></h2>
            <p><?php echo $lib['— Задайте их нам :)'];?></p>
          </div>
        </div>
        <div class="col-md-4">
          <form action="/<?php echo $dir; ?>" class="feedback-sect-form js-form-call-me">
            <input type="hidden" name="formname" value="call_me__home">
            <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
            <input type="text" placeholder="<?php echo $lib['Номер телефона'];?>" name="phone" required>
            <button class="green-btn"><?php echo $lib['Отправить'];?></button>
          </form>
        </div>
      </div>
    </div>
  </section>
  <section class="offers">
    <div class="container">
      <h2 class="main-title"><?php echo $blogs[53]['name'];?></h2>
      <?php foreach($blogs[53]['blogs'] as $blog){ ?>
      
        <div class="offers-single">
          <div class="offers-single-head">
            <p class="name"><?php echo $blog['title'];?></p>
            <a href="/<?php echo $blog['keyword'];?>" class="more"><?php echo $lib['Больше'];?></a>
          </div>
          <div class="offers-single-content">
            <img src="/image/<?php echo $blog['image'];?>" alt="">
            <?php echo $blog['short_description'];?>
            <div class="offers-single-content-btn">
              <a href="/<?php echo $blog['keyword'];?>" class="red-btn"><?php echo $lib['подробнее'];?></a>
            </div>
          </div>
        </div>
      <?php } ?>

    </div>
  </section>
  <section class="calc">
    <div class="container">
      <h2><?php echo $lib['экспресс расчет ваших окон'];?></h2>
      <form action="/index.php?route=account/universalform" class="calc-form" method="post">
        <input type="hidden" name="formname" value="call_me__home_calc_windows">
        <input type="hidden" name="redireck" value="/">
        <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
        <input type="tel" placeholder="<?php echo $lib['Ваш номер'];?>" name="phone" required>
        <div class="file">
          <label for="file"><?php echo $lib['Прикрепить файл'];?></label>
          <input id="file" type="file" class="file-input" name="file">
        </div>
        <button type="submit" class="blue-btn"><?php echo $lib['Перезвонить'];?></button>
      </form>
    </div>
  </section>
  <section class="company-info">
    <div class="container">
      <div class="col-md-8 col-md-offset-2">
        <div class="company-info-block">
          <?php echo htmlspecialchars_decode($footer_hi_text['description'], ENT_QUOTES);?>
          </div>
        <div class="border"></div>
      </div>
    </div>
  </section>




<script>
$('#button-comment').on('click', function(e) {
  e.preventDefault();
  $.ajax({
    url: 'index.php?route=blog/blog/write&blog_id=80',
    type: 'post',
    dataType: 'json',
    data: $("#comment_form").serialize(),
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#comment_form').after('<div class="alert alert-danger fb-modal" style="display: none;"><h2><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</h2></div>');
      }
      
      if (json['success']) {
        $('#comment_form').after('<div class="alert alert-success fb-modal" style="display: none;"><h2><i class="fa fa-check-circle"></i> ' + json['success'] + '</h2></div>');
        
        $('input[name=\'name\']').val('');
        $('input[name=\'contract_number\']').val('');
        $('textarea[name=\'comment\']').val('');
      }

      var c = $('#comment_form + .alert');
      $.fancybox.open({
        content: c,
        type: 'html',
        padding: 0,
        margin: 0,
        autoSize: false,
        infobar: true,
        toolbar: true,
      });
    }
  });
  return false;
});

$('.news-nav').on('click', 'a', function(){
  $('.news-nav a').removeClass('active');
  $(this).addClass('active');
});
</script>


<script>
$('.prices-type li:first a').tab('show');
</script>

<?php echo $footer; ?>




