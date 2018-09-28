
<%@page import="com.wisdom.beans.User"%>
<%@page import="com.wisdom.dao.UserDao"%>
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    
<%@page import="com.wisdom.beans.Notice"%>
<%@page import="com.wisdom.dao.NoticeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.wisdom.beans.Enterapply"%>
<%@page import="com.wisdom.dao.EnterApplicyDao"%>
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
%>
    
         <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



        <script src="js/bootstrap.min.js"></script>
        
          
        

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
<!-- bootstrap加入UI样式,位置在css文件夹 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<!-- <boot table> -->
 <link href="yy/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="yy/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="yy/assets/styles.css" rel="stylesheet" media="screen">
        <link href="yy/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="yy/vendors/flot/excanvas.min.js"></script><![endif]-->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="yy/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
         <script src="yy/vendors/jquery-1.9.1.js"></script>
        <script src="yy/bootstrap/js/bootstrap.min.js"></script>
        <script src="yy/vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="yy/assets/scripts.js"></script>
        <script src="yy/assets/DT_bootstrap.js"></script>
        <script>
        $(function() {
            
        });
        </script>
        
<!-- </boot> -->


<!-- 导出功能 -->
<script src="js/tableExport.min.js"></script>
<script src="js/tableExport.js"></script>


</head>

<body style="padding: 20px;">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">新闻列表</a></li>
    </ul>
    </div>
      
      
      <% UserDao dao=new UserDao();
  	List<User> noticelist=dao.findAllUser();
  	for (User p : noticelist) {
  		System.out.println(p.getName());}
  	  %>
  	  
	  
	   <div class="formtitle"><span>新闻列表</span></div></div>
	  
	  
	  
	  
                    <div class="row-fluid">
                        <!-- block -->
                    
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left" style="height:2px"></div>
                            </div>
                              <div class="table-toolbar">
                                      <div class="btn-group">
                                         <a href="addNotice.jsp"><button class="btn btn-primary" data-toggle="modal" data-target="#myModal"  id ="btn_add"  > <i class="icon-plus icon-white"></i>Add New</button></a>
                                      </div>
                                      <div class="btn-group pull-right">
                                         <button data-toggle="dropdown" class="btn dropdown-toggle">工具 <span class="caret"></span></button>
                                         <ul class="dropdown-menu">
                                            <li><a href="#"><button type="button" id="download" style="margin-left:50px" id="btn_download" class="btn btn-primary" onClick ="$('#tb_departments').tableExport({ type: 'excel', escape: 'false' })">数据导出</button>  </a></li>
                                            <li><a href="#">Save as PDF</a></li>
                                            <li><a href="#">Export to Excel</a></li>
                                         </ul>
                                      </div>
                                   </div>
                                    
                            <div class="block-content collapse in">
                                <div class="span12">
                                    
  									<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
										<thead>
											<tr>
				    <th>账号</th>
				
				<th>密码</th>
				<th>角色</th>
				<th>邮箱</th>
				<th>联系方式</th>
				<th>修改权限</th>
				<th>操作</th>
					</tr>
										</thead>
						 				<tbody>
									
											
											
											
											
											
											
											
											
	<c:forEach items="${noticelist}" var="s3">
			<tr class="gradeA">
			    <td>${s3.name}</td>
				<td >${s2.password}</td>
				<td><c:if test="${s3.role eq'admin2'}" >信息录入管理员</c:if>
				<c:if test="${s3.role eq'admin'}" >超级管理员</c:if>
				<c:if test="${s3.role eq 'user'}">普通用户</c:if>
				</td>
				<td>${s3.email}</td>
				<td>${s3.phone}</td>
      <td><a href="getoneUSer?name=${s3.name}" class="glyphicon glyphicon-pencil btn-sm" >修改权限</a></td>
				 <td><a href="deleteOneUse?name=${s3.name}" class="glyphicon glyphicon-pencil btn-sm" >删除</a></td>
						
											</tr>
											
										</c:forEach>
										
										</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
    
	  
	  
	  
	  
	  
	    
	  

</body> 
</html>