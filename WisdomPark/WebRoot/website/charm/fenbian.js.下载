$(function () {
    var s = $(window).width() / 1920;
    $('.adapTive_box').css({
        '-moz-transform': 'scale(' + s + ')',
        '-moz-transform-origin': 'top left'
   })
 $('.adapTive_box').css({
        'zoom': s,
        height: $(window).height() / s+8
    });


   var topHight = $(".header").outerHeight()
   var bootHight =$(".footer").outerHeight()
   var mum=topHight+bootHight;

    var centhight = $(window).height();
    var main_hight = centhight - mum + "px"
    $(".main").css({
        minHeight: main_hight
    })



    $(".hv_img1").mouseover(function () {
        $(".wix_img1").stop().slideDown("200")
    })
    $(".hv_img1").mouseleave(function () {
        $(".wix_img1").stop().slideUp("200")
    })
    $(".hv_img2").mouseover(function () {
        $(".wix_img2").stop().slideDown("200")
    })
    $(".hv_img2").mouseleave(function () {
        $(".wix_img2").stop().slideUp("200")
    })
})






