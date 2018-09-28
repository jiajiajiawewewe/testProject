<%@page import="com.wisdom.beans.Policy"%>
<%@page import="com.wisdom.dao.PolicyDao"%>
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
<body style="padding: 20px;">
 <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">修改权限</a></li>
    </ul>
    </div>
 <%


 %>
  <form  class="form-horizontal" method="post" action="updateOneUser" >
    <ul class="forminfo">
    
  

    <li><label>账户(不可改)<b>*</b></label><input name="name" type="text" class="dfinput" disabled="disabled" style="width:518px;" value="${UserOne.name  }"/></li>
   <li><label>密码(不可改)<b>*</b></label><input name="password" type="text" class="dfinput" disabled="disabled" style="width:518px;" value="${UserOne.password  }"/></li>
   
    <li><label>权限设置<b>*</b></label>  
    <input type="hidden" name="name" value="${UserOne.name}"/>
    
    
    

    <div class="vocation">
    <select class="select1" name="role" >
    <option value="admin" <c:if test="${UserOne.role eq'admin'}">selected</c:if> >操控后台所有信息</option>
    <option  value="admin2" <c:if test="${UserOne.role eq'admin2'}">selected</c:if>>负责信息录入</option>
    <option  value="user" <c:if test="${UserOne.role eq'user'}">selected</c:if>>普通用户</option>
    </select>
    </div>

    </li>

    
    <li><label>&nbsp;</label><button type="submit" class="btn btn-primary" onclick="">保存</button>
	
   
   </ul>
      </form>
</body> 
</html>