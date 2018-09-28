<%@page import="com.wisdom.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import="java.util.*" %>
    
    <%@ page import="java.util.*,com.wisdom.dao.UserDao,com.wisdom.beans.User" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- bootstrap加入UI样式,位置在css文件夹 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>
</head>
<body style="padding: 20px;">
 <!--class="form-horizontal"  class是控制样式 --> 
 
   <%
   
   User user=(User)session.getAttribute("user");
   
   
		System.out.println(user.getName());
	  %>
	  
<!--  展示我的信息 -->
 
 
  

   
   
   <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">我的信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div></div>
  <form role = "form"  name="form1" class="form-horizontal" method="post" action="" >  
   
  <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "xuehao" >学号:</label>  
            <div class="col-sm-4">  
                <input type = "text"  class = "form-control" id = "xuehao"   name="xuehao" disabled="disabled" value="<%=user.getName()%>"    ></input>
                    
            </div>  
        </div> 
		
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">姓名：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name"   name="name" disabled="disabled" value="<%=user.getPassword() %>"   ></input>
                    
            </div>  
        </div> 
		
		
   	 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">邮箱：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name" disabled="disabled"  name="name" value="<%=user.getEmail() %> " ></input>
                    
            </div>  
        </div> 
		
			 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">电话：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name"  disabled="disabled" name="name" value="<%=user.getPhone() %>"  ></input>
                    
            </div>  
        </div> 
		
		
		
		
			 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">角色：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name"   name="name"  disabled="disabled"  value="<%=user.getRole() %> "></input>
                    
            </div>  
        </div> 
		
		
		
  
   </form>
   		
	
	
</body> 
</html>