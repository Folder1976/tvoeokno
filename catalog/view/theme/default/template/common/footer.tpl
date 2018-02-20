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
                'НАПИСАТЬ директору' => 'НАПИСАТИ директору',
                'работаем 24 часа в сутки' => 'працюємо 24 години на добу',
                'ПРИЕЗЖАЙТЕ К НАМ В ОФИС' => 'ПРИЇЖДЖАЙТЕ ДО НАС У ОФІС',
                '©2009-2017 Компания «Твое окно» Сайт защищен авторским правом. Копирование любой информации запрещено. Предложения и цены указанные на сайте не являются ни рекламой, ни офертой.' => '© 2009-2017 Компанія «Твоє вікно» Сайт захищений авторським правом. Копіювання будь-якої інформації заборонено. Пропозиції та ціни зазначені на сайті не є ні рекламою, ні офертою.',
                '' => '',

                );
  
  $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
 $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = UA_URL;}
  //Пример
  //<?php echo $lib['русская фраза']; ? >
  ?><footer class="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="footer-logo">
                <img src="/catalog/view/theme/default/image/logo2.svg" alt="">
                <a href="#" class="blue-btn js-send-letter-director"><?php echo $lib['НАПИСАТЬ директору']; ?></a>
              </div>
            </div>
            <div class="col-md-3">
              <h2><?php echo $lib['работаем 24 часа в сутки']; ?></h2>
               <?php $count =1; ?>
               <?php foreach($group_list[17]['list'] as $row){ ?>
                <?php if($count++ < 5){ ?>
                    <p><?php echo $row['name']; ?></p>
                <?php } ?>
              <?php } ?>
              </div>
            <div class="col-md-3">
              <h2><?php echo $lib['ПРИЕЗЖАЙТЕ К НАМ В ОФИС']; ?></h2>
              <p><?php echo $address; ?></p>
            </div>
            
             
            <div class="col-md-3">
              <?php if(isset($group_list[12])){ ?><a href="<?php echo $group_list[12]['href']; ?>" class="top-link"><?php echo $group_list[12]['name']; ?></a><?php } ?>
              <?php if(isset($group_list[7])){ ?><a href="<?php echo $group_list[7]['href']; ?>" class="top-link"><?php echo $group_list[7]['name']; ?></a><?php } ?>
              <?php if(isset($group_list[11])){ ?><a href="<?php echo $group_list[11]['href']; ?>" class="top-link"><?php echo $group_list[11]['name']; ?></a><?php } ?>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
               <?php foreach($group_list[16]['list'] as $row){ ?>
                    <a href="<?php echo $row['href'.$lang_key]; ?>" class="top-link"><?php echo $row['name']; ?></a>
               <?php } ?>
               <?php if ( isset($logged) && $logged ) { ?>
                <a href="<?php echo $account; ?>" class="top-link"><?php echo $text_account; ?></a>
                <!-- <a href="<?php echo $logout; ?>" class="top-link"><?php echo $text_logout; ?></a> -->
               <?php } else { ?>
                <a href="<?php echo $register; ?>" class="top-link"><?php echo $text_register; ?></a>
                <!-- <a href="<?php echo $login; ?>" class="top-link"><?php echo $text_login; ?></a> -->
               <?php } ?>
              <a href="/<?php echo $group_list[18]['list'][75]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][75]['name']; ?></a>
              <a href="/<?php echo $group_list[18]['list'][76]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][76]['name']; ?></a>
              <a href="/<?php echo $group_list[18]['list'][77]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][77]['name']; ?></a>
              <a href="/<?php echo $group_list[18]['list'][78]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][78]['name']; ?></a>
              <a href="/<?php echo $group_list[18]['list'][79]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][79]['name']; ?></a>
              <a href="/<?php echo $group_list[18]['list'][80]['href'.$lang_key]; ?>" class="top-link"><?php echo $group_list[18]['list'][80]['name']; ?></a>
            </div>
            <div class="col-md-9">
              <div class="row">
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[10]['name']; ?></h2>
                         <?php foreach($group_list[10]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[8]['name']; ?></h2>
                         <?php foreach($group_list[8]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[9]['name']; ?></h2>
                         <?php foreach($group_list[9]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>

              </div>
              
              <div class="row">
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[13]['name']; ?></h2>
                         <?php foreach($group_list[13]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[14]['name']; ?></h2>
                         <?php foreach($group_list[14]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[15]['name']; ?></h2>
                         <?php foreach($group_list[15]['list'] as $row){ ?>
                              <a href="<?php echo $row['href'.$lang_key]; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-md-offset-1">
              <p><?php echo $lib['©2009-2017 Компания «Твое окно» Сайт защищен авторским правом. Копирование любой информации запрещено. Предложения и цены указанные на сайте не являются ни рекламой, ни офертой.'];?></p>
            </div>
            <div class="col-md-3">
              <ul class="footer-social">
                <li><a href="#"><img src="/catalog/view/theme/default/image/f2.svg" alt=""></a></li>
                <li><a href="#"><img src="/catalog/view/theme/default/image/g2.svg" alt=""></a></li>
                <li><a href="#"><img src="/catalog/view/theme/default/image/i2.svg" alt=""></a></li>
                <li><a href="#"><img src="/catalog/view/theme/default/image/y2.svg" alt=""></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <a href="#" class="up-btn">
      <span class="circle">
        <span></span>
      </span>
    </a>

    <div class="dark-bg"></div>

    <script src="/catalog/view/theme/default/libs/fancybox/jquery.fancybox.min.js"></script>
    <script src="/catalog/view/theme/default/libs/owl-carousel/owl.carousel.min.js"></script>
    <script src="/catalog/view/theme/default/libs/scroll/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/catalog/view/theme/default/libs/nice-select/nice-select.min.js"></script>
    <script src="/catalog/view/theme/default/libs/slider/nouislider.min.js"></script>
    <script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
    <script src="/catalog/view/theme/default/libs/parallax/parallax.min.js"></script>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <!--script src="https://maps.googleapis.com/maps/api/js"></script-->
    <script src="/catalog/view/theme/default/js/main.js"></script>

    <script>
    // Pretty simple huh?
    var scene = document.getElementById('scene');
    if ( scene ) {
      var parallax = new Parallax(scene);
    }
    </script>
    <link href="/catalog/view/theme/default/js/nanoGALLERY-5.10.3/css/nanogallery.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/catalog/view/theme/default/js/nanoGALLERY-5.10.3/jquery.nanogallery.js"></script>
    <style>
      .ff{
        border-radius: 20px;
      }
    </style>
    <script>
      //http://nanogallery.brisbois.fr/
    var myColorScheme = {
        navigationbar: {
            background: '#fff',
            border: '0px dotted #555',
            color: '#ccc',
            colorHover: '#fff'
        },
        thumbnail: {
            background: 'none',
            border: '0px solid #000',
            labelBackground: 'transparent',
            labelOpacity: '0.1',
            titleColor: '#fff',
            descriptionColor: '#eee'
        }
    };
      
    $(document).ready(function () {
      
			$("#nanoGallery3").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
	
  		$("#nanoGallery31").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
	
  		$("#nanoGallery32").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
	
  		$("#nanoGallery33").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
	
  		$("#nanoGallery34").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
	
  		$("#nanoGallery35").nanoGallery({
				itemsBaseURL:'/image',
        colorScheme: myColorScheme,
			});
		});	
    </script>

<?php if(isset($_GET['form_success'])){ ?>
<div class="msg_back" style="width: 100%;height: 100%;top:0;left:0;position: fixed;opacity: 0.5;background-color: black;z-index: 1000;"></div>
<div class="form_success fancybox-slide fancybox-slide--html fancybox-slide--current fancybox-slide--complete" style="z-index: 1001;">
  <div id="fb-modal" class="fb-modal" style="display: inline-block;"><h2>Форма отправлена</h2>
  <button data-fancybox-close="" class="fancybox-close-small" title="Close"></button>
  </div>
</div>
	

<script>
console.log('start');
  $(document).ready(function(){    
    setTimeout(function(){
      $('.msg_back').hide(1000);
      $('.form_success').hide(1000);
      },5000);
  });


</script>
<?php } ?>

  </body>
</html>