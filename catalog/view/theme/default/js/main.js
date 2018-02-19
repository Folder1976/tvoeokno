jQuery.fn.exists = function() {
   return $(this).length;
}

jQuery.fn.extend({
  toggleText:function(a,b){
    if(this.html()==a){this.html(b)}
    else{this.html(a)}
  }
});


$('.side-nav').on('mouseover', 'li a', function(){
  $(this).css('right', '-' + $(this).width() + 'px');
});
$('.side-nav').on('mouseout', 'li a', function(){
  $(this).css('right', '-63px');
});

jQuery(document).ready(function($) {
  $('.open-sub-menu').on('click', function(){
    if ( !$(this).hasClass('open') ) {
      $('.open-sub-menu').removeClass('open');
      $('.main-nav-dropdown').removeClass('open');
      $(this).addClass('open');
      $(this).closest('li').find('.main-nav-dropdown').addClass('open');
    } else {
      $(this).removeClass('open');
      $(this).closest('li').find('.main-nav-dropdown').removeClass('open');
    }
  });
});

var map;

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 50.461589, lng: 30.584967},
    zoom: 18,
    scrollwheel: false,
  });
  var marker = new google.maps.Marker({
    position: {lat: 50.461589, lng: 30.584967},
    map: map,
  });
}

if ($("#map").length) {
  initMap();
}

jQuery(document).ready(function($) {
  // fancybox 
  function fb_open (c) {
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


  // форма "перезвонить мне"
  $('.js-form-call-me').submit(function(e){
    var c = $('#fb-modal');
    c.html('<h2></h2>');

    $.ajax({
      url: '/index.php?route=account/universalform',
      type: 'post',
      dataType: 'json',
      //dataType: 'html',
      beforeSend: function () {
        c.find('h2').html('<h2>Сообщение отсылается. Пожалуйста подождите...</h2>');
        fb_open(c);
      },
      data: $(this).serialize(),
      success: function(json) {
      console.log(json);

        if (json['success']) {
          c.find('h2').html('<h2>Форма отправлена</h2>');
        } else {
          c.find('h2').html('<h2>Ошибка</h2>');
        }

        if ( !$('body').hasClass('fancybox-active') ) {
          fb_open(c);
        }
        
      }
    });

    return false;
  });



  // модалка "заказать замер"
  $('.js-order-measure').on('click', function(){
    var c = $('#modal-measure');
    fb_open(c);
    return false;
  });

  // модалка "Заказать звонок"
  $('.js-order-call').on('click', function(){
    var c = $('#modal-call');
    fb_open(c);
    return false;
  });

  // модалка "Получить скидку"
  $('.js-order-discount').on('click', function(){
    var c = $('#modal-discount');
    fb_open(c);
    return false;
  });

  // модалка "Получить скидку"
  $('.js-send-letter-director').on('click', function(){
    var c = $('#modal-send-letter-director');
    fb_open(c);
    return false;
  });

  // модалка корзины в шапке
  
  $('.js-modal-cart').on('click', function(){
    var c = $('#modal-cart');
    fb_open(c);
    return false;
  });


  // зум фото на странице товара
  $('.prices-single-img img').on('click', function(){
    var s = $(this).attr('src');
    var c = $('#fb-modal');
    zoomIndex = $(this).data('img-index') ? $(this).data('img-index') : 0;
    c.html('<div id="fb-zoom-foto" class="fb-zoom-foto"><img src="'+s+'" class="img"><div class="prev-foto"><i class="fas fa-arrow-left"></i></div><div class="next-foto"><i class="fas fa-arrow-right"></i></div></div>');
    fb_open(c);
  });
  $('body').on('click', '#fb-zoom-foto .prev-foto', function(){
    if ( zoomIndex == 0 ) {
      zoomIndex = $('#productGallery .js-set-main_image').length - 1;
    } else {
      zoomIndex = zoomIndex - 1;
    }
    var d = $('#productGallery .js-set-main_image')[zoomIndex];
    var s = $(d).data('image') ? $(d).data('image') : $('#productGallery .js-set-main_image')[zoomIndex].getAttribute('src');
    $('#fb-zoom-foto .img').attr('src', s);
  });
  $('body').on('click', '#fb-zoom-foto .next-foto', function(){
    if ( zoomIndex >= $('#productGallery .js-set-main_image').length - 1 ) {
      zoomIndex = 0;
    } else {
      zoomIndex = zoomIndex + 1;
    }
    var d = $('#productGallery .js-set-main_image')[zoomIndex];
    var s = $(d).data('image') ? $(d).data('image') : $('#productGallery .js-set-main_image')[zoomIndex].getAttribute('src');
    $('#fb-zoom-foto .img').attr('src', s);
  });

});



jQuery(document).ready(function($) {

  $('.header-top .header-burger').click(function() {
    $(this).toggleClass("close");
    $('.header-nav').slideToggle();
  });

  $('.mobile-menu').click(function() {
    $(this).find('.header-burger').toggleClass("close");
    $('.header-bottom').slideToggle();
  });

  $(window).scroll(function () {
    if ($(this).scrollTop() > 250) $('.up-btn').fadeIn();
    else $('.up-btn').fadeOut();
  });
  $('.up-btn').click(function (e) {
    e.preventDefault();
    $('body, html').animate({
      scrollTop: 0
    }, 1000);
  });

  $('.select').niceSelect();

  var owl = $('.main-slider');
  owl.owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause:true,
    smartSpeed: 400,
  });

  var owl2 = $('.certificates-slider');
  owl2.owlCarousel({
    items: 3,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    smartSpeed: 400,
    margin: 30,
    responsive: {
      0: {
        items: 1,
      },
      768: {
        items: 3,
      },
      992: {
        items: 2,
      },
      1199: {
        items: 3
      }
    },
  });
  $('.owl-prev').click(function(e) {
    e.preventDefault();
    owl2.trigger('prev.owl.carousel');
  });
  $('.owl-next').click(function(e) {
    e.preventDefault();
    owl2.trigger('next.owl.carousel');
  });

  var owl3 = $('.review-slider');
  owl3.owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    smartSpeed: 400,
    margin: 30,
  });
  $('.owl-prev2').click(function(e) {
    e.preventDefault();
    owl3.trigger('prev.owl.carousel');
  });
  $('.owl-next2').click(function(e) {
    e.preventDefault();
    owl3.trigger('next.owl.carousel');
  });

  var owl4 = $('.similar-product-slider');
  owl4.owlCarousel({
    items: 3,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    smartSpeed: 400,
    margin: 30,
    responsive: {
      0: {
        items: 1,
        margin: 10,
      },
      768: {
        items: 3,
      }
    },
  });
  $('.similar-prev').click(function(e) {
    e.preventDefault();
    owl4.trigger('prev.owl.carousel');
  });
  $('.similar-next').click(function(e) {
    e.preventDefault();
    owl4.trigger('next.owl.carousel');
  });

  var owl5 = $('#productGallery');
  owl5.owlCarousel({
    items: 2,
    loop: false,
    autoplay: false,
    smartSpeed: 400,
    nav: true,
    navText: ['<span></span>','<span></span>'],
  });

  $(".second-count-btn").on("click", function(e) {
    e.preventDefault();

    var $button = $(this);
    var oldValue = $button.parent().find("input").val();
    if ($button.text() == "+") {
      var newVal = parseFloat(oldValue) + 1;
    } else {
     // Don't allow decrementing below zero
      if (oldValue > 0) {
        var newVal = parseFloat(oldValue) - 1;
      } else {
        newVal = 0;
      }
    }

    $button.parent().find("input").val(newVal);

  });

  $('.offers-single-head .more').click(function(e) {
    e.preventDefault();
    $(this).toggleText('Меньше', 'Больше');
    $(this).parent().parent().find('.offers-single-content').slideToggle();
  });

  $(".company-info-block").mCustomScrollbar({
    theme:"dark-thick"
  });

  $('.plastic-window-elements .link').click(function(e) {
    e.preventDefault();
    var currentAttrValue = $(this).attr( "href" );
    $('.dark-bg').fadeToggle();
    $(this).toggleClass('active');
    $(currentAttrValue).fadeToggle();
  });
  $('.plastic-window-elements .link1').click(function() {
    $('.img1').fadeToggle();
  });
  $('.plastic-window-elements .link2').click(function() {
    $('.img2').fadeToggle();
  });
  $('.plastic-window-elements .link3').click(function() {
    $('.img3').fadeToggle();
  });
  $('.plastic-window-elements .link4').click(function() {
    $('.img4').fadeToggle();
  });
  $('.plastic-window-elements .link5').click(function() {
    $('.img5').fadeToggle();
  });
  $('.plastic-window-elements .link6').click(function() {
    $('.img6').fadeToggle();
  });
  $('.plastic-window-elements .link7').click(function() {
    $('.img7').fadeToggle();
  });
  $('.plastic-window-elements .link8').click(function() {
    $('.img8').fadeToggle();
  });

  $('.dark-bg').click(function() {
    $(this).fadeOut();
    $('.plastic-window-elements-info').fadeOut();
    $('.plastic-window-elements').find('.link').removeClass('active');
    $('.imgs').fadeOut();
  });

  $('.plastic-window-elements .imgs').click(function() {
    $('.dark-bg').fadeOut();
    $('.plastic-window-elements-info').fadeOut();
    $('.plastic-window-elements').find('.link').removeClass('active');
    $('.imgs').fadeOut();
  });

  var heightSlider = document.getElementById('height-slider');
  if ( heightSlider ) {
    heightSlider.style.height = '400px';
    var heightValues = [
      document.getElementById('price-lower'),
      document.getElementById('price-upper')
    ];
    noUiSlider.create(heightSlider, {
      start: [1000],
      connect: true,
      tooltips: true,
      step: 1,
      orientation: 'vertical',
      direction: 'rtl',
      range: {
        'min': 0,
        'max': 2400,
      },
    });
    heightSlider.noUiSlider.on('update', function( values, handle ) {
      var value = values[handle];
      $('#height_window_input').val(value);
    });
    $('#height_window_input').on('change', function(){
      heightSlider.noUiSlider.set(this.value);
    });
  }

  var widthSlider = document.getElementById('width-slider');
  if ( widthSlider ) {
    widthSlider.style.width = '400px';
    var heightValues = [
      document.getElementById('price-lower'),
      document.getElementById('price-upper')
    ];
    noUiSlider.create(widthSlider, {
      start: [500],
      connect: true,
      tooltips: true,
      step: 1,
      range: {
        'min': 0,
        'max': 2400,
      },
    });
    widthSlider.noUiSlider.on('update', function( values, handle ) {
      var value = values[handle];
      $('#width_window_input').val(value);
    });
    $('#width_window_input').on('change', function(){
      widthSlider.noUiSlider.set(this.value);
    });
  }


});