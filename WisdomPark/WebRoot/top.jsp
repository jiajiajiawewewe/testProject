<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css"/>


	<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})
})
</script>


</head>

<body style="background:url(images/tcbg.png);">

<div class="dropdown" style=
     "float:right">
    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" 
            data-toggle="dropdown">
        主题
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="myinfo.jsp" target="rightFrame">个人信息</a>
        </li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="LogoutServlet" target="_parent">退出</a>
        </li>
       
        </li>
    </ul>
</div>
​

    <div class="topleft"  style="background:url(images/topleft.png)">
    <a href="main.html" target="_parent"> <title="系统首页" /></a>
    </div>
        

            
    <div class="topright " style="background:url(images/tcpg.png); background-repeat:no-repeat;"> 
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="LogoutServlet" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>${name }</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>

</body>
</html>
