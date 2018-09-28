
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demoJQuery.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
  <script>
  
$(document).ready(function(){
  $("input").keydown(function(){
    $("input").css("background-color","yellow");
  });
  $("input").keyup(function(){
    $("input").css("background-color","pink");
  });
});
</script>
  <body>
    This is my JSP page. <br>
    
    <!-- bootstrap提示 -->
    
    <h4>工具提示（Tooltip）插件 - 锚</h4>
这是一个 <a href="#" class="tooltip-test" data-toggle="tooltip" title="默认的 Tooltip">默认的 Tooltip</a>.
    <h4>工具提示（Tooltip）插件 - 按钮</h4>
<button type="button" class="btn btn-default" data-toggle="tooltip"  title="默认的 Tooltip"> 默认的 Tooltip</button>
    <script>
	$(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>
  </body>
</html>
