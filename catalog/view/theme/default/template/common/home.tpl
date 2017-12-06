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
                <form action="/" class="timer-form">
                  <input type="text" placeholder="Ваше имя">
                  <input type="tel" placeholder="Ваш телефон">
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
                <form action="/" class="timer-form">
                  <input type="text" placeholder="Ваше имя">
                  <input type="tel" placeholder="Ваш телефон">
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
        <a href="#" class="active left">Акции</a>
        <a href="#" class="right">новости</a>
      </div>
      <div class="row">
        <div class="col-md-7">
          <div class="news-single">
            <img src="/catalog/view/theme/default/image/banner1.jpg" alt="">
            <div class="news-single-content">
              <h2>Очень большой заголовок <br> в две строки</h2>
              <p>At arcu accumsan morbi vestibulum molestie. Ac id vel urna urna pharetra, in eu, pellentesque eros quam donec in.</p>
              <p>Lacinia at risus vulputate lorem, mattis integer eu fermentum magnis, ut placerat viverra imperdiet lectus per. Dolor nec nunc, occaecat sodales dui at tincidunt. Nunc vel interdum libero mus turpis mi, quam egestas nunc. Cras condimentum integer etiam nostra dui ultrices laoreet ut ante.</p>
              <span class="time">21.09.2017</span>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <div class="news-single">
            <div class="news-single-content">
              <h2>Очень большой заголовок <br> в две строки</h2>
              <p>At arcu accumsan morbi vestibulum molestie. Ac id vel urna urna pharetra, in eu, pellentesque eros quam donec in.</p>
              <p>Lacinia at risus vulputate lorem, mattis integer eu fermentum magnis, ut placerat viverra imperdiet lectus per. Dolor nec nunc, occaecat sodales dui at tincidunt. Nunc vel interdum libero mus.</p>
              <span class="time">21.09.2017</span>
            </div>
          </div>
          <div class="news-single">
            <div class="news-single-content">
              <h2>Очень большой заголовок</h2>
              <p>At arcu accumsan morbi vestibulum molestie. Ac id vel urna urna pharetra, in eu, pellentesque eros quam donec in.</p>
              <p>Lacinia at risus vulputate lorem, mattis integer eu fermentum magnis, ut placerat viverra imperdiet lectus per. Dolor nec nunc, occaecat sodales dui at tincidunt. Nunc vel interdum libero mus turpis mi, quam egestas nunc. Cras condimentum integer etiam nostra dui.</p>
              <span class="time">21.09.2017</span>
            </div>
          </div>
          <div class="news-btn">
            <a href="#" class="red-btn">все акции</a>
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
              <div class="item">
                <div class="review-single">
                  <p>Заказывал на дачу 4 окна. Размеры все разные. Менеджер, молодая и очень позитивная девушка! Помогла правильно выполнить заказ, передалав несколько (N!)-раз спецификацию. После 50% предоплаты на счет банковской карты был подтвержден мой заказ. Установленные сроки доставки и цена по правде говоря меня даже удивили. Водитель машины, которыйкоторый осуществлял доставку, позвонил и поинтересовался можно ли выполнить её на</p>
                  <div class="bottom">
                    <p class="date">21.08.17</p>
                    <p class="name">Прытков Илья</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="review-single">
                  <p>Заказывал на дачу 4 окна. Размеры все разные. Менеджер, молодая и очень позитивная девушка! Помогла правильно выполнить заказ, передалав несколько (N!)-раз спецификацию. После 50% предоплаты на счет банковской карты был подтвержден мой заказ. Установленные сроки доставки и цена по правде говоря меня даже удивили. Водитель машины, которыйкоторый осуществлял доставку, позвонил и поинтересовался можно ли выполнить её на</p>
                  <div class="bottom">
                    <p class="date">21.08.17</p>
                    <p class="name">Прытков Илья</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="review-btn">
              <div class="owl-nav navs">
                <a href="#" class="owl-prev2 prev"><span></span></a>
              </div>
              <a href="#" class="review-btn-main purple-btn">все отзывы</a>
              <div class="owl-nav navs">
                <a href="#" class="owl-next2 next"><span></span></a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <form action="/" class="review-form">
            <h3>Оставить отзыв</h3>
            <input type="text" placeholder="Имя">
            <input type="text" placeholder="Номер договора">
            <textarea placeholder="Ваш отзыв"></textarea>
            <button class="blue-btn">Отправить</button>
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
          <form action="/" class="feedback-sect-form">
            <input type="text" placeholder="Ваше имя">
            <input type="text" placeholder="Номер телефона">
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
      <form action="/" class="calc-form">
        <input type="text" placeholder="Ваше имя">
        <input type="text" placeholder="Ваше имя">
        <div class="file">
          <label for="file">Прикрепить файл</label>
          <input id="file" type="file" class="file-input">
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







<?php echo $footer; ?>




