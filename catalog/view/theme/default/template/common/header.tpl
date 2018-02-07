<?php
  $lands = array(
                'Наша почта:' => 'Наша пошта:',
                'Наш адрес:' => 'Наша адреса:',
                'Перезвонить мне' => 'Передзвоніть мені',
                'В сравнении' => 'До порівняння',
                'Меню' => 'Меню',
                'Главная' => 'Головна',
                'Вызвать замерщика' => 'Викликати замірника',
                'Ваше имя' => 'Ваше им\'я',
                'Адрес' => 'Адресa',
                'Удобное время звонка' => 'Зручний час дзвінка',
                'Ваш телефон' => 'Ваш телефон',
                'Отправить заявку' => 'Відправити запит',
                'Ваши пожелания' => 'Ваші побажання',
                'Заказать звонок' => 'Замовити дзвінок',
                'Удобное время звонка' => 'Зручний час дзвінка',
                'Перезвоните мне' => 'Передзвоніть мені',
                'Получить скидки' => 'Отримати знижки',
                'Количество окон' => 'Кількість вікон',
                'Перезвоните мне' => 'Передзвоніть мені',
                'Написать директору' => 'Написати директору',
                'Ваши пожелания' => 'Ваші побажання',
                'Отправить' => 'Відправити',
                'Отправить чертеж на почту' => 'Надіслати креслення на пошту',
                'Расчет окон' => 'Розрахунок вікон',
                'Отзывы' => 'Відгуки',
                'Запись на замер' => 'Запис на завміри',
                'Ремонт окон' => 'Ремонт вікон',
                'Фото работ' => 'Фото робіт',
                '' => '',

                );
   $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
   $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = UA_URL;}
  
  

   //Пример
  //<?php echo $lib['русская фраза']; ? >
  ?><!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>

    <script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/vendor.css">
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
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
              <?php foreach($group_list[16]['list'] as $row){ ?>
                <li><a href="<?php echo $row['href'.$lang_key]; ?>"><?php echo $row['name']; ?></a></li>
              <?php } ?>

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
    
              <a href="/<?php echo $dir; ?>">
                <img src="/catalog/view/theme/default/image/logo.svg" alt="лого Твое окно">
                <?php echo $open; ?>
              </a>
            </div>
          </div>
          <div class="col-md-5 col-sm-8">
            <div class="header-info">
              <div class="header-info-top">
                <p><?php echo $group_list[17]['name']; ?></p>
                <ul class="header-info-top-list">
                  <?php foreach($group_list[17]['list'] as $row){ ?>
                    <li
                       <?php if(strpos($row['href'.$lang_key], 'viber') !== false){ ?> class="viber"<?php } ?>
                       ><a href="<?php echo $row['href'.$lang_key]; ?>"><?php echo $row['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
              <div class="header-info-center">
                <div class="block email">
                  <p><?php echo $lib['Наша почта:']; ?></p>
                  <a href="mailto:okna@tvoeokno.com.ua"><?php echo $email; ?></a>
                </div>
                <div class="block address">
                  <p><?php echo $lib['Наш адрес:']; ?></p>
                  <a href="<?php echo $group_list[16]['list'][69]['href'.$lang_key]; ?>"><?php echo $address; ?></a>
                </div>
              </div>
              <?php echo $search; ?>
            </div>
          </div>
          <div class="col-md-4 col-sm-12">
            <div class="header-callback">
              <form action="/" class="header-callback-form js-form-call-me">
                <input type="hidden" name="formname" value="call_me__header">
                <input type="tel" placeholder="Телефон" name="phone" required>
                <button class="red-btn"><?php echo $lib['Перезвонить мне']; ?></button>
              </form>
              <div class="wrap-header-button">
                <a href="/<?php echo $group_list[18]['list'][76]['href'.$lang_key]; ?>" class="header-callback-single" title="<?php echo $group_list[18]['list'][76]['name']; ?>">
                  <span class="img compare"></span>
                  <p><?php echo $group_list[18]['list'][76]['name']; ?></p>
                </a>
                <a href="<?php echo $wishlist; ?>" class="header-callback-single" title="<?php echo $text_wishlist; ?>">
                  <span class="img star"></span>
                  <p><?php echo $text_wishlist; ?></p>
                </a>
                <?php echo $cart; ?>
              </div>
            </div>
          </div>
        </div>
           
      </div>
      <div class="mobile-menu">
        <p><?php echo $lib['Меню']; ?></p>
        <button type="button" class="header-burger">
          <span></span>
        </button>
      </div>
      <div class="header-bottom">
        <div class="main-nav">
          <ul class="main-nav-list">
            <li>
              <a href="/<?php echo $dir; ?>">
                <img src="/catalog/view/theme/default/image/i.svg" alt="">
                <span><?php echo $group_list[10]['name']; ?></span>
              </a>
              <div class="main-nav-dropdown">
                <ul>
                <?php foreach($group_list[10]['list'] as $row){ ?>
                    <li class="main-nav-dropdown-item"><a href="<?php echo $row['href'.$lang_key]; ?>"><?php echo $row['name']; ?></a></li>
                <?php } ?>
                </ul>
              </div>
            </li>

            <?php
            foreach ($categories as $key => $category) {
              if ( $key == 0 ) {
                // если категория = "Пластиковые окна"
                // вместо подкатегорий выводим "Производителей"
            ?>
              <li>
                <a href="<?php echo $category['href']; ?>">
                  <img src="/catalog/view/theme/default/image/m1.svg" alt="">
                  <span><?php echo $category['name']; ?></span>
                </a>
                <span class="open-sub-menu"><i class="fas fa-angle-down"></i></span>
                <div class="main-nav-dropdown">
                  <ul>
                    <?php foreach ($category['children'] as $k => $child) { ?>
                      <li class="main-nav-dropdown-item"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                    
                    <?php
                    //foreach ($manufacturers as $key => $manuf) {
                     // echo '<li class="main-nav-dropdown-item"><a href="'.$manuf['keyword'].'">Окна '.$manuf['name'].'</a></li>';
                    //}
                    ?>
                  </ul>
                </div>
              </li>
            <?php
              } else if ( $key == 1 ) {
                // для категории "Окна Цены"
                // выпадающее меню линкуется на /all/..
            ?>
              <li>
                <a href="<?php echo $category['href']; ?>">
                  <img src="/catalog/view/theme/default/image/m<?php echo $key+1;?>.svg" alt="">
                  <span><?php echo $category['name']; ?></span>
                </a>
                <span class="open-sub-menu"><i class="fas fa-angle-down"></i></span>
                <?php if ( count($category['children']) > 0 ) { ?>
                <div class="main-nav-dropdown">
                  <ul>
                    <?php foreach ($category['children'] as $k => $child) { ?>
                      <li class="main-nav-dropdown-item"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
                <?php } ?>
              </li>
            <?php
              } else {
                // для всех остальных категорий - выводим подкатегории
            ?>
              <li>
                <a href="<?php echo $category['href']; ?>">
                  <img src="/catalog/view/theme/default/image/m<?php echo $key+1;?>.svg" alt="">
                  <span><?php echo $category['name']; ?></span>
                </a>
                <span class="open-sub-menu"><i class="fas fa-angle-down"></i></span>
                <?php if ( count($category['children']) > 0 ) { ?>
                <div class="main-nav-dropdown">
                  <ul>
                    <?php foreach ($category['children'] as $k => $child) { ?>
                      <li class="main-nav-dropdown-item"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
                <?php } ?>
              </li>
            <?php
              }
            }
            ?>
          </ul>
        </div>
      </div>
    </header>

    <div id="fb-modal" class="fb-modal" style="display: none;"></div>
    <div id="modal-measure" class="fb-modal modal-measure" style="display: none;">
        <h2><?php echo $lib['Вызвать замерщика'];?></h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/measure.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <input type="hidden" name="formname" value="call_me__modal_measure">
            <div class="row">
                <div class="col-md-4">
                    <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
                    <input type="text" placeholder="<?php echo $lib['Адрес'];?>" name="address" required>
                    <input type="tel" placeholder="<?php echo $lib['Ваш телефон'];?>" name="phone" required>
                    <input type="text" placeholder="<?php echo $lib['Удобное время звонка'];?>" name="time">
                </div>
                <div class="col-md-4">
                    <textarea name="comments" name="comments" placeholder="<?php echo $lib['Ваши пожелания'];?>" cols="30" rows="8"></textarea>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="margin: 30px 0 0;">
                <div class="col-md-12">
                    <button class="green-btn"><?php echo $lib['Отправить заявку'];?></button>
                </div>
            </div>
        </form>
    </div>
    <div id="modal-call" class="fb-modal modal-call" style="display: none;">
        <h2><?php echo $lib['Заказать звонок'];?></h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/call.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <input type="hidden" name="formname" value="call_me__modal_call">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
                    <input type="text" placeholder="<?php echo $lib['Удобное время звонка'];?>" name="time">
                </div>
                <div class="col-md-5">
                    <input type="tel" placeholder="<?php echo $lib['Ваш телефон'];?>" name="phone" required>
                    <button class="green-btn"><?php echo $lib['Перезвоните мне'];?></button>
                </div>
            </div>
        </form>
    </div>
    <div id="modal-discount" class="fb-modal modal-discount" style="display: none;">
        <h2><?php echo $lib['Получить скидки'];?></h2>
        <div class="image"><img src="/catalog/view/theme/default/image/modal/discount.png" alt=""></div>
        <form action="" class="js-form-call-me">
            <input type="hidden" name="formname" value="call_me__modal_discount">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
                    <input type="text" placeholder="<?php echo $lib['Количество окон'];?>" name="window" required>
                </div>
                <div class="col-md-5">
                    <input type="tel" placeholder="<?php echo $lib['Ваш телефон'];?>" name="phone" required>
                    <button class="green-btn"><?php echo $lib['Перезвоните мне'];?></button>
                </div>
            </div>
        </form>
    </div>
    <div id="modal-send-letter-director" class="fb-modal modal-send-letter-director" style="display: none;">
        <h2><?php echo $lib['Написать директору'];?></h2>
        <form action="" class="js-form-call-me">
            <input type="hidden" name="formname" value="call_me__modal_send_letter_director">
            <div class="row">
                <div class="col-md-4">
                    <input type="text" placeholder="<?php echo $lib['Ваше имя'];?>" name="name" required>
                    <input type="text" placeholder="<?php echo $lib['Адрес'];?>" name="address" required>
                    <input type="tel" placeholder="<?php echo $lib['Ваш телефон'];?>" name="phone" required>
                    <input type="text" placeholder="<?php echo $lib['Удобное время звонка'];?>" name="time">
                </div>
                <div class="col-md-8">
                    <textarea name="comments" name="comments" placeholder="<?php echo $lib['Ваши пожелания'];?>" cols="30" rows="8"></textarea>
                </div>
            </div>
            <div class="row" style="margin: 30px 0 0;">
                <div class="col-md-12">
                    <button class="green-btn"><?php echo $lib['Отправить'];?></button>
                </div>
            </div>
        </form>
    </div>

    <section class="main-sect">
        <ul class="side-nav">
          <li>
            <a href="/<?php echo $group_list[18]['list'][75]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][75]['name']; ?></span><img src="/catalog/view/theme/default/image/51.png" alt=""></a>
          </li>
          <li>
            <a href="/<?php echo $group_list[18]['list'][76]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][76]['name']; ?></span><img src="/catalog/view/theme/default/image/52.png" alt=""></a>
          </li>
          <li>
            <a href="/<?php echo $group_list[18]['list'][77]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][77]['name']; ?></span><img src="/catalog/view/theme/default/image/53.png" alt=""></a>
          </li>
          <li>
            <a href="/<?php echo $group_list[18]['list'][78]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][78]['name']; ?></span><img src="/catalog/view/theme/default/image/54.png" alt=""></a>
          </li>
          <li>
            <a href="/<?php echo $group_list[18]['list'][79]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][79]['name']; ?></span><img src="/catalog/view/theme/default/image/55.png" alt=""></a>
          </li>
          <li>
            <a href="/<?php echo $group_list[18]['list'][80]['href'.$lang_key]; ?>"><span><?php echo $group_list[18]['list'][80]['name']; ?></span><img src="/catalog/view/theme/default/image/56.png" alt=""></a>
          </li>
        </ul>
    </section>
