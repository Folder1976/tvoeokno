<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Project</title>
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
  <body>
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
              <a href="#">
                <img src="/catalog/view/theme/default/image/logo.svg" alt="">
                <p>9:00 - 18:00 пн - пн<span>10:00 - 15:00 сб</span></p>
              </a>
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
              <a href="#">
                <img src="/catalog/view/theme/default/image/i.svg" alt="">
                <span>Главная</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m1.svg" alt="">
                <span>Пластиковые окна</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m2.svg" alt="">
                <span>Окна цены</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m3.svg" alt="">
                <span>Балконы и лоджии</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m4.svg" alt="">
                <span>Нестандарты</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="/catalog/view/theme/default/image/m5.svg" alt="">
                <span>Аксессуары</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </header>
  <section class="main-sect">
    <ul class="side-nav">
      <li>
        <a href="#">
          <span>Отправить чертеж на почту</span>
          <img src="/catalog/view/theme/default/image/51.png" alt="">
        </a>
      </li>
      <li>
        <a href="#">
          <span>Расчет окон</span>
          <img src="/catalog/view/theme/default/image/52.png" alt="">
        </a>
      </li>
      <li>
        <a href="#">
          <span>Отзывы</span>
          <img src="/catalog/view/theme/default/image/53.png" alt="">
        </a>
      </li>
      <li>
        <a href="#">
          <span>Запись на замер</span>
          <img src="/catalog/view/theme/default/image/54.png" alt="">
        </a>
      </li>
      <li>
        <a href="#">
          <span>Ремонт окон</span>
          <img src="/catalog/view/theme/default/image/55.png" alt="">
        </a>
      </li>
      <li>
        <a href="#">
          <span>Фото работ</span>
          <img src="/catalog/view/theme/default/image/56.png" alt="">
        </a>
      </li>
    </ul>
<!--
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
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
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
-->