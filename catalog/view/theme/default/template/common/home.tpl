<?php echo $header; ?>

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
                <form action="/" class="timer-form js-form-call-me">
                  <input type="text" placeholder="Ваше имя" name="name" required>
                  <input type="tel" placeholder="Ваш телефон" name="phone" required>
                  <button class="green-btn">получить скидку</button>
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
                <form action="/" class="timer-form js-form-call-me">
                  <input type="text" placeholder="Ваше имя" name="name" required>
                  <input type="tel" placeholder="Ваш телефон" name="phone" required>
                  <button class="green-btn">получить скидку</button>
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
      <h2 class="main-title">Проверенные бренды</h2>
      <div class="row">

        <?php foreach($manufacturers as $manufacture){ ?>
          <div class="col-md-3 col-sm-4">
            <a href="/<?php echo $manufacture['keyword'];?>" class="brands-single">
              <img src="/image/<?php echo $manufacture['image'];?>" alt="Бренд <?php echo $manufacture['title'];?>">
            </a>
          </div>
        <?php } ?>
      </div>
    </div>
  </section>
  <section class="prices">
    <div class="container">
      <h2 class="main-title">цены на окна</h2>
      <div class="prices-type">
        <p class="bold">ЦЕНЫ:</p>
        <ul>
          <li><a href="#" class="active">Двухстворчатое окно</a></li>
          <li><a href="#">Трехстворчатое окно</a></li>
          <li><a href="#">Балконный блок</a></li>
          <li><a href="#">Остекление лоджии</a></li>
        </ul>
        <p>*Цены без установки</p>
      </div>
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
                  <th>Система</th>
                  <th>1-камерый</th>
                  <th>2-камерный</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Open teck</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>WDS Olimpia</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Rehau Ecosol 60</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Rehau Ecosol 70</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Salamander 2D</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Salamander Streamline</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Windom Eco</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
                <tr>
                  <td>Decco 71</td>
                  <td>1688</td>
                  <td>1688</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-md-3">
            <div class="prices-single-right">
              <div class="complectation">
                <h3>Комплектация к окну</h3>
                <p>Подоконник 26 см - 106 грн</p>
                <p>Отлив 15 см - 70 грн</p>
                <p>Москитная сетка - 120 грн</p>
                <p>Установка окна 486 грн</p>
              </div>
              <div class="price">
                <p>Цена от: 2957 грн</p>
                <span>* При заказе с установкой</span>
              </div>
              <div class="buy">
                <a href="#" class="favorite opt">В избранное</a>
                <a href="#" class="comparison opt">В сравнение</a>
                <a href="#" class="buy-btn green-btn">рассчитать стоимость</a>
                <a href="#" class="buy-link">КУпить в рассрочку по 0%</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="advantages">
    <div class="container">
      <h2 class="main-title"><?php echo $blogs['our_advantages']['name'];?></h2>
      <div class="row">
        <?php foreach($blogs['our_advantages']['blogs'] as $blog){ ?>
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
        <a href="#tab-actions" class="active left" data-toggle="tab"><?php echo $blogs['action']['name']; ?></a>
        <a href="#tab-news" class="right" data-toggle="tab">новости</a>
      </div>
      <div class="row news-tab active" id="tab-actions">
        <div class="col-md-7">
          <div class="news-single">
            <img src="/image/<?php echo $blogs['action']['blogs'][0]['image']; ?>" alt="">
            <div class="news-single-content">
              <h2><?php
                if ( empty($blogs['action']['blogs'][0]['description']) ) {
                  echo $blogs['action']['blogs'][0]['title'];
                } else {
                  echo '<a href="/'.$blogs['action']['blogs'][0]['keyword'].'">'.$blogs['action']['blogs'][0]['title'].'</a>';
                } ?></h2>
              <p><?php echo $blogs['action']['blogs'][0]['short_description']; ?></p>
              <span class="time"><?php echo $blogs['action']['blogs'][0]['date_added']; ?></span>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <?php $blogs_action = array_slice($blogs['action']['blogs'], 1, 3); ?>
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
            <a href="/<?php echo $blogs['action']['keyword']; ?>" class="red-btn">все акции</a>
          </div>
        </div>
      </div>
      <div class="row news-tab" id="tab-news">
        <div class="col-md-7">
          <div class="news-single">
            <img src="/image/<?php echo $blogs['news']['blogs'][0]['image']; ?>" alt="">
            <div class="news-single-content">
              <h2><?php
                if ( empty($blogs['news']['blogs'][0]['description']) ) {
                  echo $blogs['news']['blogs'][0]['title'];
                } else {
                  echo '<a href="/'.$blogs['news']['blogs'][0]['keyword'].'">'.$blogs['news']['blogs'][0]['title'].'</a>';
                } ?></h2>
              <p><?php echo $blogs['news']['blogs'][0]['short_description']; ?></p>
              <span class="time"><?php echo $blogs['news']['blogs'][0]['date_added']; ?></span>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <?php $blogs_action = array_slice($blogs['news']['blogs'], 1, 3); ?>
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
            <a href="/<?php echo $blogs['news']['keyword']; ?>" class="red-btn">все новости</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="work">
        <?php echo $modules['html-33']; ?>
  </section>
  <section class="certificates">
    <div class="container-fluid">
      <h2 class="main-title"><?php echo $blogs['garanty']['name'];?></h2>
      <div class="row">
        <div class="col-md-4 col-md-offset-1">
          <div class="certificates-info">
            <img src="/catalog/view/theme/default/image/guarantee.png" alt="" class="guarantee">
            <h3>Наши гарантийные обязательства</h3>
            <p>Мы обеспечиваем бесплатное гарантийное обслуживание Вашего заказа в течение 60 месяцев со дня установки заказа. Для этого у нас создан сервисный отдел. Гарантия распространяется на профиль, стеклопакет, фурнитуру и монтаж.</p>
            <a href="#" class="green-btn">все о гарантии</a>
          </div>
        </div>
        <div class="col-md-7">
          <div class="certificates-slider owl-carousel">
            <div class="item">
              <a href="#">
                <img src="/catalog/view/theme/default/image/40.png" alt="">
              </a>
            </div>
            <div class="item">
              <a href="#">
                <img src="/catalog/view/theme/default/image/40.png" alt="">
              </a>
            </div>
            <div class="item">
              <a href="#">
                <img src="/catalog/view/theme/default/image/40.png" alt="">
              </a>
            </div>
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
      
      <h2 class="main-title">Кленты о НАС</h2>
      <div class="row">
        <div class="col-md-6 col-md-offset-1">
          <div class="review">
            <div class="review-slider owl-carousel">
              <?php foreach ($comments as $comment) { ?>
              <div class="item">
                <div class="review-single">
                  <p><?php echo $comment['comment']; ?></p>
                  <div class="bottom">
                    <p class="date"><?php echo $comment['date_added']; ?></p>
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
              <a href="/comments" class="review-btn-main purple-btn">все отзывы</a>
              <div class="owl-nav navs">
                <a href="#" class="owl-next2 next"><span></span></a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <form action="/" class="review-form" id="comment_form">
            <h3>Оставить отзыв</h3>
            <input type="text" placeholder="Имя" name="name" required>
            <input type="text" placeholder="Номер договора" name="contract_number">
            <textarea placeholder="Ваш отзыв" name="comment" required></textarea>

            <input type="hidden" name="email" value="test@test.com">
            <input type="hidden" name="captcha_comment">
            <button id="button-comment" class="blue-btn">Отправить</button>
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
            <h2>Остались вопросы?</h2>
            <p>— Задайте их нам :)</p>
          </div>
        </div>
        <div class="col-md-4">
          <form action="/" class="feedback-sect-form js-form-call-me">
            <input type="text" placeholder="Ваше имя" name="name" required>
            <input type="text" placeholder="Номер телефона" name="phone" required>
            <button class="green-btn">Отправить</button>
          </form>
        </div>
      </div>
    </div>
  </section>
  <section class="offers">
    <div class="container">
      <h2 class="main-title"><?php echo $blogs['our_services']['name'];?></h2>
      <?php foreach($blogs['our_services']['blogs'] as $blog){ ?>
      
        <div class="offers-single">
          <div class="offers-single-head">
            <p class="name"><?php echo $blog['title'];?></p>
            <a href="/<?php echo $blog['keyword'];?>" class="more">Больше</a>
          </div>
          <div class="offers-single-content">
            <img src="/image/<?php echo $blog['image'];?>" alt="">
            <?php echo $blog['short_description'];?>
            <div class="offers-single-content-btn">
              <a href="/<?php echo $blog['keyword'];?>" class="red-btn">подробнее</a>
            </div>
          </div>
        </div>
      <?php } ?>

    </div>
  </section>
  <section class="calc">
    <div class="container">
      <h2>экспресс расчет ваших окон</h2>
      <form action="/" class="calc-form js-form-call-me">
        <input type="text" placeholder="Ваше имя" name="name" required>
        <input type="tel" placeholder="Ваш номер" name="phone" required>
        <div class="file">
          <label for="file">Прикрепить файл</label>
          <input id="file" type="file" class="file-input" name="file">
        </div>
        <button type="submit" class="blue-btn">Перезвонить</button>
      </form>
    </div>
  </section>
  <section class="company-info">
    <div class="container">
      <div class="col-md-8 col-md-offset-2">
        <div class="company-info-block">
          <p>Приветствуем Вас на официальном сайте компании Твое окно. Итак, Вы видимо в поиске, где купить окна в Киеве или области отличного качества и низким ценам на окна. Любой потребитель при поиске товара, будь то пластиковые окна или что-нибудь другое, — опирается на ряд критериев.</p>
          <p>Что же для нас всех важно? Во-первых цена. Да-да, чтобы мы не говорили, но в наше время цена все таки на первом месте. И, даже если мы мониторим какой либо товар определенной марки, выбираем из предложений самое доступное.</p>
          <p>Поэтому, учитывая Ваш первый и самый главный критерий, мы можем смело о себе заявить,</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum ipsa eaque perferendis accusamus aut velit est iure consequatur sunt ex reiciendis, veritatis, voluptatum architecto dolores assumenda quam consectetur adipisci, nam?</p>
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
        $('#comment_form').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }
      
      if (json['success']) {
        $('#comment_form').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
        
        $('input[name=\'name\']').val('');
        $('input[name=\'contract_number\']').val('');
        $('textarea[name=\'comment\']').val('');
      }
    }
  });
  return false;
});

$('.news-nav').on('click', 'a', function(){
  $('.news-nav a').removeClass('active');
  $(this).addClass('active');
});
</script>


<?php echo $footer; ?>




