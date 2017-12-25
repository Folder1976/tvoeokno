 <footer class="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="footer-logo">
                <img src="/catalog/view/theme/default/image/logo2.svg" alt="">
                <a href="#" class="blue-btn js-send-letter-director">НАПИСАТЬ директору</a>
              </div>
            </div>
            <div class="col-md-3">
              <h2>работаем 24 часа в сутки</h2>
              <p>0 (44) 227 12 25</p>
              <p>0 (93) 661 30 30</p>
              <p>0 (50) 661 30 30</p>
              <p>0 (67) 161 30 30</p>
            </div>
            <div class="col-md-3">
              <h2>ПРИЕЗЖАЙТЕ К НАМ В ОФИС</h2>
              <p>м. Левобережная, <br> ул. Комбинатная <br> 25</p>
            </div>
            <div class="col-md-3">
              <a href="<?php echo $group_list[12]['href']; ?>" class="top-link"><?php echo $group_list[12]['name']; ?></a>
              <a href="<?php echo $group_list[7]['href']; ?>" class="top-link"><?php echo $group_list[7]['name']; ?></a>
              <a href="<?php echo $group_list[11]['href']; ?>" class="top-link"><?php echo $group_list[11]['name']; ?></a>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <a href="/about_us" class="top-link">О компании</a>
              <a href="/shares" class="top-link">Акции и новости</a>
              <a href="/blogs" class="top-link">Статьи и обзоры</a>
              <a href="/delivery" class="top-link">Доставка</a>
              <a href="/payment" class="top-link">Оплата</a>
              <a href="/contacts" class="top-link">Контакты</a>
              <!-- <a href="#" class="top-link">Личный кабинет</a> -->
              <?php if ( isset($logged) && $logged ) { ?>
                <a href="<?php echo $account; ?>" class="top-link"><?php echo $text_account; ?></a>
                <!-- <a href="<?php echo $logout; ?>" class="top-link"><?php echo $text_logout; ?></a> -->
              <?php } else { ?>
                <a href="<?php echo $register; ?>" class="top-link"><?php echo $text_register; ?></a>
                <!-- <a href="<?php echo $login; ?>" class="top-link"><?php echo $text_login; ?></a> -->
              <?php } ?>
              <a href="/chertog" class="top-link">отправить чертеж на почту</a>
              <a href="/online_windows_calculator" class="top-link">калькулятор</a>
              <a href="/comments" class="top-link">отзывы</a>
              <a href="/zamer" class="top-link">Вызвать замерщика</a>
              <a href="/service-master" class="top-link">Ремонт окон</a>
              <a href="/works" class="top-link">фото работ</a>
            </div>
            <div class="col-md-9">
              <div class="row">
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[10]['name']; ?></h2>
                         <?php foreach($group_list[10]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[8]['name']; ?></h2>
                         <?php foreach($group_list[8]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[9]['name']; ?></h2>
                         <?php foreach($group_list[9]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>

              </div>
              
              <div class="row">
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[13]['name']; ?></h2>
                         <?php foreach($group_list[13]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[14]['name']; ?></h2>
                         <?php foreach($group_list[14]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
                         <?php } ?>
                    </div>
                    
                    <div class="col-md-4 single">
                         <h2><?php echo $group_list[15]['name']; ?></h2>
                         <?php foreach($group_list[15]['list'] as $row){ ?>
                              <a href="<?php echo $row['href']; ?>" class="footer-link"><?php echo $row['name']; ?></a>
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
              <p>©2009-2017 Компания «Твое окно» Сайт защищен авторским правом. Копирование любой информации запрещено. Предложения и цены указанные на сайте не являются ни рекламой, ни офертой.</p>
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
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="/catalog/view/theme/default/js/main.js"></script>
    <script>

      // Pretty simple huh?
      // var scene = document.getElementById('scene');
      // var parallax = new Parallax(scene);

    </script>
  </body>
</html>

<!--footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

<!--/body></html-->