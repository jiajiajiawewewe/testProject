<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<!-- 
该页面为新闻录入管理员 -->


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
<style type="text/css">
.menuson doc{
cursor: no-drop;
background:blue;
}
</style>
</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>菜单栏</div>
    
    <dl class="leftmenu">
 
    
    <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>管理新闻信息
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="List_notice.jsp" target="rightFrame">新聞信息操作</a><i></i></li>
       
 <li>  <cite></cite><a href="addNotice.jsp" target="rightFrame">添加新聞</a><i></i></li>
           </ul>    
    </dd>
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>入园申请管理
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="list_cmpany.jsp" target="rightFrame">入园信息</a><i></i></li>
      
        </ul>    
    </dd>
        
     <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>管理评论信息
    </div>
    	<ul class="menuson">
    	 <li>  <cite></cite><a href="publish.jsp" target="rightFrame">发帖</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/adminListAtricle" target="rightFrame">评论信息操作</a><i></i></li>
       

      
        </ul>    
    </dd>
  
    
    


	 <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>管理政策信息
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="addPolicy.jsp" target="rightFrame">添加政策</a><i></i></li>
       
   
        </ul>    
    </dd>
    
        <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>信息统计
    </div>
    	<ul class="menuson">
        <li ><cite></cite><a href=" Echarts.jsp" target="rightFrame">统计</a><i></i></li>
       
        
      
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
    
 
    
    <script type="text/javascript">
    $('#doc').click(function(e){
        e.preventDefault();//阻止鼠标的默认点击事件
        e.stopImmediatePropagation() ;//阻止冒泡事件发生
 });
</script>
</body>
</html>

