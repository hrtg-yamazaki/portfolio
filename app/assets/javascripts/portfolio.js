$(document).on("turbolinks:load", function(){
  $(function(){
 

    // *****TOP部分のメニュー***** //

    // メニュー展開 //
    $(".fa-bars").click(function(){
    
      $(this).next(".header-right__sp__menu").slideToggle();
      $(this).css("display", "none");
      $(".header-right__sp__close").css("display", "inline");

    });

    $(".header-right__sp__close").click(function(){
      $(".header-right__sp__menu").slideToggle();
      $(this).css("display", "none");
      $(".fa-bars").css("display", "inline");
    })

    // スクロール //
    $(".js-works").click(function(){
      var works = $(".works-wrapper").offset().top;
      $("html, body").animate({scrollTop: works}, 777);
    })

    $(".js-about").click(function(){
      var about = $(".about-wrapper").offset().top;
      $("html, body").animate({scrollTop: about}, 777);
    })

    $(".js-pageinfo").click(function(){
      var pageInfo = $(".site-wrapper").offset().top;
      $("html, body").animate({scrollTop: pageInfo}, 777);
    })


    //***** ページTOPへのスクロール *****/
    $(".footer__box__button__text").click(function(){
      var topWrapper = $(".top-wrapper").offset().top;
      $("html, body").animate({scrollTop: topWrapper}, 777);
    })
    

  });
})
