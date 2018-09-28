﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>

</head>
		
<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>菜单栏</div>
    
    <dl class="leftmenu">
 
    
 
 
        
     <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>管理帖子信息
    </div>
    	<ul class="menuson">
    	 <li>  <cite></cite><a href="publish.jsp" target="rightFrame">发布公告</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/adminListAtricle" target="rightFrame">评论信息操作</a><i></i></li>
       

      
        </ul>    
    </dd>
  
    
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>用户信息</div>
    <ul class="menuson">
     
       <li><cite></cite><a href="addAdmin.jsp" target="rightFrame">操作信息</a><i></i></li>
       
          </ul>    
    </dd>  
    

 
    
    


<dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>个人信息
    </div>
    	<ul class="menuson">
        <li ><cite></cite><a href="myinfo.jsp" target="rightFrame">我的信息</a><i></i></li>
       
        
      
        </ul>    
    </dd>
    

   
    
    </dl>
    
 
</body>
</html>

