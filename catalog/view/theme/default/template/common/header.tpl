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
              <li><a href="/news_and_shares">Акции и новости</a></li>
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
              <form action="/" class="header-callback-form">
                <input type="text" placeholder="Телефон">
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
            <div class="container">
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
              <a href="#">
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
              <a href="#">
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
            </div>
          </ul>
        </div>
      </div>
    </header>
  <section class="main-sect">
    <ul class="side-nav">
      <li>
        <a href="#"><span>Отправить чертеж на почту</span><img src="/catalog/view/theme/default/image/51.png" alt=""></a>
      </li>
      <li>
        <a href="#"><span>Расчет окон</span><img src="/catalog/view/theme/default/image/52.png" alt=""></a>
      </li>
      <li>
        <a href="#"><span>Отзывы</span><img src="/catalog/view/theme/default/image/53.png" alt=""></a>
      </li>
      <li>
        <a href="#"><span>Запись на замер</span><img src="/catalog/view/theme/default/image/54.png" alt=""></a>
      </li>
      <li>
        <a href="#"><span>Ремонт окон</span><img src="/catalog/view/theme/default/image/55.png" alt=""></a>
      </li>
      <li>
        <a href="#"><span>Фото работ</span><img src="/catalog/view/theme/default/image/56.png" alt=""></a>
      </li>
    </ul>
