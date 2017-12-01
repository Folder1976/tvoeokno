<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!--
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
-->
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/vendor.css">
<link rel="stylesheet" href="https://necolas.github.io/normalize.css/5.0.0/normalize.css">
<link rel="stylesheet" href="catalog/view/theme/default/libs/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="catalog/view/theme/default/libs/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="catalog/view/theme/default/libs/scroll/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="catalog/view/theme/default/libs/slider/nouislider.min.css">
<link rel="stylesheet" href="catalog/view/theme/default/libs/nice-select/nice-select.css">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/main.css">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/media.css">
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

    <header class="header">
      <div class="header-top">
        <div class="container-fluid">
          <button type="button" class="header-burger">
            <span></span>
          </button>
          <ul class="header-social">
            <li><a href="#"><img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/facebook.svg" alt=""></a></li>
            <li><a href="#"><img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/google-plus.svg" alt=""></a></li>
            <li><a href="#"><img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/insta.svg" alt=""></a></li>
            <li><a href="#"><img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/youtube.svg" alt=""></a></li>
          </ul>
          <nav class="header-nav">
            <ul class="header-nav-list">
              <li><a href="#">О компании</a></li>
              <li><a href="#">Акции и новости</a></li>
              <li><a href="#">Статьи и обзоры</a></li>
              <li><a href="#">Доставка</a></li>
              <li><a href="#">Оплата</a></li>
              <li><a href="#">Контакты</a></li>
            </ul>
          </nav>
          <ul class="header-lang">
            <li><a href="#" class="active">RU</a></li>
            <li><a href="#">UA</a></li>
          </ul>
          <div class="header-account">
            <a href="#">Личный кабинет</a>
          </div>
        </div>
      </div>
      <div class="header-center">
        <div class="row">
          <div class="col-md-3 col-sm-4">
            <div class="header-logo">
           <?php if ($logo) { ?>
            <?php if ($home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } ?>
           <?php } else { ?>
          <?php } ?>
          <br>
            <a><p>9:00 - 18:00 пн - пн<span>10:00 - 15:00 сб</span></p></a>
            </div>
          </div>
          <div class="col-md-5 col-sm-8">
            <div class="header-info">
              <div class="header-info-top">
                <p>Свяжитесь с нами</p>
                <ul class="header-info-top-list">
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
                  <a href="#">okna@tvoeokno.com.ua</a>
                </div>
                <div class="block address">
                  <p>Наш адрес:</p>
                  <a href="#">м. Левобережная, ул. Комбинатная 25</a>
                </div>
              </div>
              <form action="/" class="header-info-form">
                <input type="text" placeholder="Найди меня">
                <button><span class="search"></span></button>
              </form>
            </div>
          </div>
          <div class="col-md-4 col-sm-12">
            <div class="header-callback">
              <form action="/" class="header-callback-form">
                <input type="text" placeholder="Телефон">
                <button class="red-btn">Перезвонить мне</button>
              </form>
              <a href="#" class="header-callback-single">
                <span class="img compare"></span>
                <p>В сравнении</p>
              </a>
              <a href="#" class="header-callback-single">
                <span class="img star"></span>
                <p>Избранное</p>
              </a>
              <a href="#" class="header-callback-single">
                <span class="img busket"></span>
                <p>Корзина</p>
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
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/i.svg" alt="">
                <span>Главная</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/m1.svg" alt="">
                <span>Пластиковые окна</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/m2.svg" alt="">
                <span>Окна цены</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/m3.svg" alt="">
                <span>Балконы и лоджии</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/m4.svg" alt="">
                <span>Нестандарты</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="http://tvoeokno.alegar.com.ua/catalog/view/theme/default/image/m5.svg" alt="">
                <span>Аксессуары</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </header>