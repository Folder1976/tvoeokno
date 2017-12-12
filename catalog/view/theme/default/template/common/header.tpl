<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>

    <script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/vendor.css">
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://necolas.github.io/normalize.css/5.0.0/normalize.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/fancybox/jquery.fancybox.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/scroll/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/slider/nouislider.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/libs/nice-select/nice-select.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/main.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/media.css">
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="<?php echo $class; ?>">
    <header class="header">
      <div class="header-top">
        <div class="container-fluid">
          <button type="button" class="header-burger">
            <span></span>
          </button>
          <ul class="header-social">
            <li><a href="#"><img src="/catalog/view/theme/default/image/facebook.svg" alt=""></a></li>
            <li><a href="#"><img src="/catalog/view/theme/default/image/google-plus.svg" alt=""></a></li>
            <li><a href="#"><img src="/catalog/view/theme/default/image/insta.svg" alt=""></a></li>
            <li><a href="#"><img src="/catalog/view/theme/default/image/youtube.svg" alt=""></a></li>
          </ul>
          <nav class="header-nav">
            <ul class="header-nav-list">
              <li><a href="/about_us">О компании</a></li>
              <li><a href="/shares">Акции</a></li>
              <li><a href="/news_main">Новости</a></li>
              <li><a href="/blogs">Статьи и обзоры</a></li>
              <li><a href="/delivery">Доставка</a></li>
              <li><a href="/payment">Оплата</a></li>
              <li><a href="/contacts">Контакты</a></li>
            </ul>
          </nav>
          
          <?php echo $language; ?>
           
          <div class="header-account" style="color:white">
              <?php if ($logged) { ?>
                <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> /
                <!--li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li-->
                <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
              <?php } else { ?>
                <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> /
                <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
              <?php } ?>
            <!--a href="#">Личный кабинет</a-->
          </div>
        </div>
      </div>
      <div class="header-center">
        <div class="row">
          <div class="col-md-3 col-sm-4">
            <div class="header-logo">
              <a href="/">
                <img src="/catalog/view/theme/default/image/logo.svg" alt="лого Твое окно">
                <p>9:00 - 18:00 пн - пн<span>10:00 - 15:00 сб</span></p>
              </a>
            </div>
          </div>
          <div class="col-md-5 col-sm-8">
            <div class="header-info">
              <div class="header-info-top">
                <p>Свяжитесь с нами</p>
                <ul class="header-info-top-list">
                  <!-- <li><a href="tel:<?php echo preg_replace('~[^0-9]+~','',$telephone); ?>"><?php echo $telephone;?></a></li> -->
                  <li><a href="tel:0442271225">0 (44) 227 12 25</a></li>
                  <li><a href="tel:0936613030">0 (93) 661 30 30</a></li>
                  <li><a href="tel:0506613030">0 (50) 661 30 30</a></li>
                  <li><a href="tel:0671613030">0 (67) 161 30 30</a></li>
                  <li class="viber"><a href="viber://add?number=0671613030">0 (67) 161 30 30</a></li>
                </ul>
              </div>
              <div class="header-info-center">
                <div class="block email">
                  <p>Наша почта:</p>
                  <a href="mailto:okna@tvoeokno.com.ua">okna@tvoeokno.com.ua</a>
                </div>
                <div class="block address">
                  <p>Наш адрес:</p>
                  <a href="#">м. Левобережная, ул. Комбинатная 25</a>
                </div>
              </div>
              <?php echo $search; ?>
            </div>
          </div>
          <div class="col-md-4 col-sm-12">
            <div class="header-callback">
              <form action="/" class="header-callback-form js-form-call-me">
                <input type="tel" placeholder="Телефон" name="phone" required>
                <button class="red-btn">Перезвонить мне</button>
              </form>
              <a href="/index.php?route=product/compare" class="header-callback-single">
                <span class="img compare"></span>
                <p>В сравнении</p>
              </a>
              <a href="<?php echo $wishlist; ?>" class="header-callback-single" title="<?php echo $text_wishlist; ?>">
                <span class="img star"></span>
                <p><?php echo $text_wishlist; ?></p>
              </a>
              <a href="<?php echo $checkout; ?>" class="header-callback-single" title="<?php echo $text_checkout; ?>">
                <span class="img busket"></span>
                <p><?php echo $text_checkout; ?></p>
              </a>
            </div>
          </div>
        </div>
           
      </div>
      <div class="mobile-menu">
        <p>Меню</p>
        <button type="button" class="header-burger">
          <span></span>
        </button>
      </div>
      <div class="header-bottom">
        <div class="main-nav">
          <ul class="main-nav-list">
            <li>
              <a href="/">
                <img src="/catalog/view/theme/default/image/i.svg" alt="">
                <span>Главная</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Кредит "Тепла оселя"</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Выезд в пригород Киева</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Доставка</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Гарантия</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Статьи</a></li>
              </ul>
            </li>
            <li>
              <a href="/plastic_windows">
                <img src="/catalog/view/theme/default/image/m1.svg" alt="">
                <span>Пластиковые окна</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Окна REHAU</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна SALAMANDER</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна WDS</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна DECCO</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна OPEN TECK</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна KBE</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна WINDOM</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна VEKA</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна ALMPLAST</a></li>
              </ul>

            </li>
            <li>
              <a href="/window_prices">
                <img src="/catalog/view/theme/default/image/m2.svg" alt="">
                <span>Окна цены</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Цены на типовые окна</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Балконный блок</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Калькулятор окон ONLINE</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Окна недорого</a></li>
              </ul>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m3.svg" alt="">
                <span>Балконы и лоджии</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Остекление лоджий</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Остекление балконов</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Французский балкон</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Балкон под ключ</a>
                  <ul class="main-nav-dropdown-submenu">
                    <li class="dropdown-submenu"><a href="#">Сайдинг на балконе</a></li>
                    <li class="dropdown-submenu"><a href="#">Профнастил на балконе</a></li>
                    <li class="dropdown-submenu"><a href="#">Крыша на балкон</a></li>
                  </ul>
                </li>
                <li class="main-nav-dropdown-item"><a href="#">Балкон с выносом</a>
                  <ul class="main-nav-dropdown-submenu">
                    <li class="dropdown-submenu"><a href="#">Вынос балкона по типу "косынка"</a></li>
                    <li class="dropdown-submenu"><a href="#">Балкон с выносом по типу "каркас"</a></li>
                    <li class="dropdown-submenu"><a href="#">Расширение пола балкона</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m4.svg" alt="">
                <span>Нестандарты</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Остекление коттеджей</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Арочные окна</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Цветные окна</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Пластиковые двери</a></li>
              </ul>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m5.svg" alt="">
                <span>Аксессуары</span>
              </a>
              <ul class="main-nav-dropdown">
                <li class="main-nav-dropdown-item"><a href="#">Подоконники</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Стеклопакеты</a>
                  <ul class="main-nav-dropdown-submenu">
                    <li class="dropdown-submenu"><a href="#">Марки стеклопакетов</a></li>
                  </ul>
                </li>
                <li class="main-nav-dropdown-item"><a href="#">Фурнитура MACO</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Откосы</a></li>
                <li class="main-nav-dropdown-item"><a href="#">Подоконник DANKE</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </header>

    <div id="fb-modal" class="fb-modal" style="display: none;"></div>
    <div id="modal-measure" class="fb-modal modal-measure" style="display: none;">
        <h2>Вызвать замерщика</h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/measure.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <div class="row">
                <div class="col-md-4">
                    <input type="text" placeholder="Ваше имя" name="name" required>
                    <input type="text" placeholder="Адрес" name="address" required>
                    <input type="tel" placeholder="Ваш телефон" name="phone" required>
                    <input type="text" placeholder="Удобное время звонка" name="address" required>
                </div>
                <div class="col-md-4">
                    <textarea name="comments" name="comments" placeholder="Ваши пожелания" cols="30" rows="8"></textarea>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="margin: 30px 0 0;">
                <div class="col-md-12">
                    <button class="green-btn">Отправить заявку</button>
                </div>
            </div>
        </form>
    </div>
    <div id="modal-call" class="fb-modal modal-call" style="display: none;">
        <h2>Заказать звонок</h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/call.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <input type="text" placeholder="Ваше имя" name="name" required>
                    <input type="text" placeholder="Удобное время звонка" name="address" required>
                </div>
                <div class="col-md-5">
                    <input type="tel" placeholder="Ваш телефон" name="phone" required>
                    <button class="green-btn">Перезвоните мне</button>
                </div>
            </div>
        </form>
    </div>
    <div id="modal-discount" class="fb-modal modal-discount" style="display: none;">
        <h2>Получить скидки</h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/discount.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <input type="text" placeholder="Ваше имя" name="name" required>
                    <input type="text" placeholder="Количество окон" name="window" required>
                </div>
                <div class="col-md-5">
                    <input type="tel" placeholder="Ваш телефон" name="phone" required>
                    <button class="green-btn">Перезвоните мне</button>
                </div>
            </div>
        </form>
    </div>

    <section class="main-sect">
        <ul class="side-nav">
          <li>
            <a href="/chertog"><span>Отправить чертеж на почту</span><img src="/catalog/view/theme/default/image/51.png" alt=""></a>
          </li>
          <li>
            <a href="/online_windows_calculator"><span>Расчет окон</span><img src="/catalog/view/theme/default/image/52.png" alt=""></a>
          </li>
          <li>
            <a href="/comments"><span>Отзывы</span><img src="/catalog/view/theme/default/image/53.png" alt=""></a>
          </li>
          <li>
            <a href="/zamer"><span>Запись на замер</span><img src="/catalog/view/theme/default/image/54.png" alt=""></a>
          </li>
          <li>
            <a href="#"><span>Ремонт окон</span><img src="/catalog/view/theme/default/image/55.png" alt=""></a>
          </li>
          <li>
            <a href="#"><span>Фото работ</span><img src="/catalog/view/theme/default/image/56.png" alt=""></a>
          </li>
        </ul>
    </section>
