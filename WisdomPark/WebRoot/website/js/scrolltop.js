$(function () {
 $(".type1").click(function(){
     var speed = 500; //滑动的速度
        $('body,html').animate({
            scrollTop: 0
        }, speed);
        return false;
 })
      
})
$(window).scroll(function(){
 var hig =$(window).scrollTop();
if(hig>250)
 {
     $(".sidebar").css("display", "block")
 }
 else
 {
     $(".sidebar").css("display", "none")
 }

})