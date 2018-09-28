<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="/WisdomPark/forum/css/default.css" />
	<link rel="stylesheet" type="text/css" href="/WisdomPark/forum/css/common.css" />
	<script src="/WisdomPark/forum/js/kindeditor/kindeditor-min.js"	type="text/javascript"></script>
	<script src="/WisdomPark/forum/js/kindeditor/lang/zh_CN.js"	type="text/javascript"></script>
	<script type="text/javascript" src="/WisdomPark/forum/js/jquery.min.js"></script>
  </head>
  
  <body>
    <div class="header">
		<table width="100%">
			<tr>
				<td width="200" style="padding-top:16px">
						</td>
				<td align="right">
					<div class="box">
					 <a href="login.jsp" style="font-weight:bold">管理员登录</a>
						<div class="demo" style="text-align:right;margin-top:50px;">
							欢迎您：<c:if test="${user == null }">游客！请先 <a href="login.jsp">登录</a></c:if>
									<c:if test="${user != null }">${loginUser }<a href="/WisdomPark/LogoutServlet">注销</a></c:if>
						</div>
						<div id="dialogBg"></div>
						<div id="dialog" class="animated">
							<img class="dialogIco" width="50" height="40" src="images/ico.png" />
							<div class="dialogTop">
								<a href="javascript:;" class="closeDialogBtn">关闭</a>
							</div>
							<form action="LoginServlet" method="post">
								<ul class="editInfos">
									<li>用户名：<input type="text" id="userName" name="userName" class="ipt" /></li>
									<li>密&nbsp;&nbsp;&nbsp;码：<input type="password" id="userPass" name="userPass" class="ipt" /></li>
									<li><input type="submit" value="登录" class="submitBtn" /></li>
								</ul>
							</form>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<hr/>
  </body>
</html>
<script type="text/javascript">
	
	
	var w,h,className;
	function getSrceenWH(){
		w = $(window).width();
		h = $(window).height();
		$('#dialogBg').width(w).height(h);
	}
	
	window.onresize = function(){  
		getSrceenWH();
	}  
	$(window).resize();  
	
	$(function(){
		getSrceenWH();
		
		//显示弹框
		$('.box #login').click(function(){
			className = $(this).attr('class');
			$('#dialogBg').fadeIn(300);
			$('#dialog').removeAttr('class').addClass('animated '+className+'').fadeIn();
			$('#userName').focus();
		});
		
		//关闭弹窗
		$('.closeDialogBtn').click(function(){
			$('#dialogBg').fadeOut(300,function(){
				$('#dialog').addClass('bounceOutUp').fadeOut();
			});
		});
	});
</script>
