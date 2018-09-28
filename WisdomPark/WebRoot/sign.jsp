<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!-- saved from url=(0037)http://www.njimip.com/System/Reg.aspx -->
<html lang="en" class="fu_body"><head id="ctl00_ctl00_Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="website/css/style.css">
<link rel="stylesheet" type="text/css" href="website/css/font_476665_8vr69rlb4qxs9k9.css">
<link rel="stylesheet" href="website/css/select.css">
<link href="website/css/Style_Wg.css" rel="stylesheet">
<script type="text/javascript" src="website/js/jquery.min.js.下载"></script>
<script type="text/javascript" src="website/js/jquery.SuperSlide.2.1.2.js.下载"></script>
<script type="text/javascript" src="website/js/nj.js.下载"></script>
<script type="text/javascript" src="website/js/layer.js.下载"></script><link rel="stylesheet" href="website/css/layer.css" id="layui_layer_skinlayercss" style="">
<script type="text/javascript" src="website/js/select.js.下载"></script>
<script src="website/js/fenbian.js.下载"></script>
<script type="text/javascript" src="website/js/jquery.mCustomScrollbar.js.下载"></script><script src="website/js/jquery.mousewheel.min.js.下载"></script>
<script src="website/js/scrolltop.js.下载"></script>

<script type="text/javascript">
    $(function () {

        var centhight = $(window).height();

        var main_hight = centhight - 193 + "px"
        $(".main").css({
            minHeight: main_hight
        })


        /*头部下拉效果*/
        $(".head_nav > ul > li").hover(function () {
            $(this).addClass("on").find(".nav_down").stop().slideDown("fast");
        }, function () {
            $(this).removeClass("on").find(".nav_down").stop().slideUp("fast");
        })

        // 图片放大效果
        $(".ser_img").hover(function () {
            $(this).find(".img_con").removeClass("img_con3")
            $(this).find(".img_con").addClass("img_con2")
        }, function () {

            $(this).find(".img_con").addClass("img_con3");
            $(this).find(".img_con").removeClass("img_con2");

        })



        $('a[href*=#],area[href*=#]').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') &&
                location.hostname == this.hostname) {
                var $target = $(this.hash);
                $target = $target.length && $target || $('[name=' + this.hash.slice(1) +
                    ']');
                if ($target.length) {
                    var targetOffset = $target.offset().top;
                    $('html,body').animate({
                        scrollTop: targetOffset - 134
                    },
                        1000);
                    return false;
                }
            }
        });

      

    })




</script>

    

<script type="text/javascript" src="website/js/jquery.validate.min.js.下载" "=""></script>

    <script>
        $(function () {

            $('input[name="tem"]').click(function () {
                if ($(this).val() == "个人") {
                    $("#enterprise").hide();
                } else {
                    $("#enterprise").show();

                }
            })


            $.validator.setDefaults({
                submitHandler: function () {
                    ajaxReg();
                }
            });

            $().ready(function () {
                
                $("#aspnetForm").validate({
                onfocusout: function (element) { $(element).valid(); },
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    log_psw: "required",
                    ok_pwd: {
                        equalTo: "#log_psw"
                    },
                    agree: "required",

                    enterpriseName: "required",
                    unifiedCode: "required",
                    realName: "required",
                    mobile: {
                        required: true,
                        minlength: 11
                    },


                },
                messages: {
                    email: {
                        required: "<i class='no'></i>请输入邮箱号",
                        email: "<i class='no'></i>请输入一个正确的邮箱！",
                    },
                    log_psw: "<i class='no'></i>账户密码不能为空",
                    ok_pwd: "<i class='no'></i>两次密码输入不一致",
                    agree: "<i class='no'></i>请勾选《用户协议》",

                    enterpriseName: "<i class='no'></i>请输入公司名称",
                    unifiedCode: "<i class='no'></i>请输入组织机构代码",
                    realName: "<i class='no'></i>请输入联系人",
                    mobile: {
                        required: "<i class='no'></i>请输入联系人手机号",
                        minlength: "<i class='no'></i>请输入一个正确的手机号！",
                    },

                },
            });

        })
        })



        function ajaxReg() {

            var logType=$('input[name="tem"]:checked').val();
            var email = $("#email").val();
            var pwd = $("#log_psw").val();
            var pwdOne = $("#ok_pwd").val();
            var enterpriseName = $("#enterpriseName").val();
            var unifiedCode = $("#unifiedCode").val();
            var realName = $("#realName").val();
            var mobile = $("#mobile").val();
          
            $.ajax({
                type: "GET",
                url: "http://www.njimip.com/System/ajaxReg.ashx",
                data: { Email: email, Pwd: pwd, PwdOne: pwdOne, EnterpriseName: enterpriseName, UnifiedCode: unifiedCode, RealName: realName, Mobile: mobile, LogType: logType},
                  dataType: "json",
                  async: false,
                  success: function (data) {
                      if (data.Result)
                          layer.confirm('您已成功提交注册信息，正在为您审核，请耐心等待！', { btn: ['确认'] }, function () { window.location = '.website/'; });
                      else
                          layer.alert(data.Message, { icon: 2, skin: 'layer-ext-moon' });
                  }
             });
        }


    </script>
    <style>
#left_child_nav { display:none;}
#right_banner { display:none;}
    </style>

<title>
	用户注册_留言板
</title></head>
<body class="fu_body">

  <div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEzMjQ3NDY5MDRkZG//utoHtxeuFQ3ctU0oknLbncBv">
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A953E6E9">
</div>
        
    

<div class="header">
    <div class="mainwidth clearfix">
        <div class="logo">
            <a href="home.jsp">
              
            </a>
        </div>
        <div class="top_right">
            <a href="login.jsp"> <i class="icon icon-suo"></i>用户登录</a>
 
		 
        </div>



        



<script>
    var _UserRoleID = "0";
    //经纪人
    if (_UserRoleID == "13") {
        $(".top_right").remove();
        $(".head_nav").css({ "margin-top": "41.58px" });
    }
</script>
      
    
         
                        
                  
       
                    


      
                          
                    


     <div class="main" style="min-height: 290px;">
        <div class="mainwidth">
            <div>
                <div class="regis_title clearfix">
                        <span>注册新账号</span><a href="login.jsp">使用已有账号登录</a>
                </div>

                 <div class="cmxform" id="cmxform">
                 
                <div class="regis_box">

                      <div style="font-size:18px;text-align:center;">
                        
                               
                          
                                </div>
</div>
</div>
</div>
</div>
      
         <form   method="post" action="${pageContext.request.contextPath}/addUSer" >  
 
	
                    <div class="login_from" >
                     
  					  <div class="login_input"  >
                           <img src="website/images/sign/realname.png">
                          
                            <input name="username" id="realName" type="text" placeholder="请输入帐户名">
                        </div>
                         <div class="login_input">
                            <img src="website/images/sign/pwd.png"><input name="password" id="log_psw" type="password" placeholder="密码 (字符区分大小写)">
                        </div>
                         <div class="login_input">
                            <img src="website/images/sign/邮箱.png"><input name="email" id="email" type="text" placeholder="请输入邮箱">
                        </div>
                        
                        <div class="login_input">
                           <img src="website/images/sign/mobile.png">
                            <input name="phone" id="mobile" type="text" placeholder="请输手机号">
                        </div>
                       
                 
                       
                      
                    	<button type="submit" class="submit" id="submitB">立即注册</button>
                
                    </div>
                  
                
                  </form>


            <script type="text/javascript">
            $("#submitB").click(function(){
            	  $.post("http://localhost:8080/WisdomPark/addUSer",
            	  {
            	    name:"Donald Duck",
            	    city:"Duckburg"
            	  },
            	  function(data,status){
            	    alert("Data: " + data + "\nStatus: " + status);
            	  });
            	});
checkreg=function(){
_user=document.getElementById("realName");
//if(_user.value==""){   //用这种方式，速度比较慢
if(_user.value.length==0){//用这种方式会比较快，再加上可以检查他的长度
alert("请输入用户名称");
_user.focus();//把光标移到用户框里
return false;
}
_user2=document.getElementById("log_psw");
if(_user2.value.length==null){//用这种方式会比较快，再加上可以检查他的长度
	alert("请输入用户密码");
	_user.focus();//把光标移到用户框里
	return false;
}

_user3=document.getElementById("email");
if(_user3.value.length==0){//用这种方式会比;较快，再加上可以检查他的长度
	alert("请输入用户邮箱");
	_user.focus();//把光标移到用户框里
	return false;


	}
_user4=document.getElementById("mobile");
	if(_user4.value.length==0){//用这种方式会比较快，再加上可以检查他的长度
		alert("请输入用户手机");
		_user.focus();//把光标移到用户框里
		return false;
		

		}
	


		return true;
}
</script>


    
<script type="text/javascript" src="./js/jquery.placeholder.min.js.下载"></script>
  
       

    </form>


    <div class="sidebar pcshow">
        <ul>
            <li class="type1" onclick="toTop()" title="回到顶部"><i class="icon icon-huidaodingbu"></i></li>
        </ul>
    </div>





</body></html>

            
   
<script type="text/javascript" src="website/js/jquery.placeholder.min.js.下载"></script>
  
       

    


    <div class="sidebar pcshow">
        <ul>
            <li class="type1" onclick="toTop()" title="回到顶部"><i class="icon icon-huidaodingbu"></i></li>
        </ul>
    </div>





</body></html>