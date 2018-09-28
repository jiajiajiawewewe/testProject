<%@page import="com.wisdom.beans.Notice"%>
<%@page import="com.wisdom.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- bootstrap加入UI样式,位置在css文件夹 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>
<body >
 <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">评论修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li style=";"  ><a href="#">发布通知</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson" name="woshimaodin">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用评论修改功能！</div>
   
         <form  class="form-horizontal" method="post" action="${pageContext.request.contextPath}/updateOneArticlexx">
    <ul class="forminfo">


	
   
    <li><label>标题<b>*</b></label><input name="title"  style="width:1000px;"type="text" class="dfinput" value="${article.title }" style="width:518px;"/></li>
   
   
    
    
    <li><label>内容<b>*</b></label>
    
    <input type="hidden" name="id" value="${article.id }"/>

    <textarea id="content7" name="content" style="width:1000px;height:550px;visibility:hidden;" >${article.content}</textarea>
    
    </li>
 
    <li><label> <b>*</b></label>  
    

    
       <li><label>&nbsp;</label><button type="submit" class="btn btn-primary" onclick="">保存</button>
   

    </ul>
      
         </form> 
    </div>
   
  
</div>
</div>
</body>
</html>