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

    $.ajax({
      url: '/index.php?route=account/universalform',
      type: 'post',
      dataType: 'json',
      //dataType: 'html',
      data: $(this).serialize(),
      success: function(json) {
        var c = $('#fb-modal');

         
        console.log(json);

        if (json['success']) {
          c.html('<h2>Форма отправлена</h2>');
        } else {
          c.html('<h2>Ошибка</h2>');
        }

        fb_open(c);
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