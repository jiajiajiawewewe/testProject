
<%@page import="java.util.List"%>
<%@page import="com.wisdom.beans.Enterapply"%>
<%@page import="com.wisdom.dao.EnterApplicyDao"%>
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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



  <link rel="stylesheet" href="css/bootstrap.min.css">
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
    <li><a href="#">评论</a></li>
    </ul>
    </div>
      <% EnterApplicyDao dao=new EnterApplicyDao();
	List<Enterapply> enterlist=dao.findAllEnterApply();
	for (Enterapply p : enterlist) {
		System.out.println(p.getCoveracreage());}
	request.setAttribute("enterlist", enterlist);
	  %>
	  
	   <div class="formtitle"><span>留言信息列表</span></div></div>
	  
	  
	  
                    <div class="row-fluid">
                        <!-- block -->
                    
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left" style="margin-top:-10px"></div>
                            </div>
                              <div class="table-toolbar">
                                      <div class="btn-group">
                                         <a href="#"><button class="btn btn-success">发帖 <i class="icon-plus icon-white"></i></button></a>
                                      </div>
                                      <div class="btn-group pull-right">
                                         <button data-toggle="dropdown" class="btn dropdown-toggle">工具 <span class="caret"></span></button>
                                         <ul class="dropdown-menu">
                                         
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
				  <th>标题</th>
				<th>内容</th>
				<th>发布时间</th>
				<th>发布人</th>
				<th>回复数</th>
				<th>回复</th>
				<th>修改</th>
				<th>删除</th>
						

											</tr>
										</thead>
										<tbody>
									
											
											
											
											
									<c:forEach items="${articles}" var="s1">
											<tr class="gradeA">
				 <td>${s1.title}</td>
                <td>${s1.content}</td>
                <td>${s1.createTime }</td>
				<td>${s1.createPerson }</td>
				<td>${s1.totalReply }</td>
				<td><a href="addReplyServletadmin?id=${s1.id}" class="glyphicon glyphicon-pencil btn-sm" >回复</a></td>
			
				<td><a href="getOneArxx?id=${s1.id}" class="glyphicon glyphicon-pencil btn-sm" >删减敏感词</a></td>
				 <td><a href="deleteArticlexx?id=${s1.id}" class="glyphicon glyphicon-pencil btn-sm" >删除</a></td>
					
											</tr>
											</tr>
										</c:forEach>
										
										</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
    
	  
	  
	  
   
<script type="text/javascript">
$('#tb_departments').bootstrapTable({  
    url: '/etoneEnter',         //请求后台的URL（*）  
    method: 'get',                      //请求方式（*）  
    striped: true,                      //是否显示行间隔色  
    sortOrder: "asc",                   //排序方式  
    queryParams: oTableInit.queryParams,//传递参数（*）  
    sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）  
    pageNumber:1,                       //初始化加载第一页，默认第一页  
    pagination: true,   
    pageSize: 10,                       //每页的记录行数（*）  
    minimumCountColumns: 2,             //最少允许的列数  
    uniqueId: "processId",                     //每一行的唯一标识，一般为主键列  
    height: 500,  
    cardView: false,                    //是否显示详细视图  
    detailView: true,                   //是否显示父子表  
    <span style="color:#ff0000;">showExport: true </span>  ,                  //是否显示导出  
     exportTypes:['excel'],               //basic', 'all', 'selected'.  
    columns: [{  
        field: 'xuehao',  
        title: '项目ID'  
    }, {  
        field: 'name',  
        title: '项目名称'  
    },{  
        field: 'age',  
        title: '上报人'  
    },  {  
        field: 'click1',  
        align: 'center',  
        width: '6%',  
        title: '',  
        formatter:function(value,row,index){  
            return '<button type="button" id="status" id="btn_query" data-target="#reviewInfo" data-toggle="modal" class="btn btn-primary   btn-xs" onclick="reviewInfo(\''+ row.name + '\',\''+ row.xuehao + '\')" >业绩趋势</button> ';  
         }  
    }, {  
        field: 'click2',  
        align: 'center',  
        width: '6%',  
        title: '',  
        formatter:function(value,row,index){  
            return '<button type="button" id="status" id="btn_query" data-target="#statusView" data-toggle="modal" class="btn btn-primary   btn-xs" onclick="statusView(\''+ row.name + '\',\''+ row.name + '\')" >销售明细</button> ';  
         }  
    },{  
        field: 'click3',  
        align: 'center',  
        width: '6%',  
        title: '',  
        formatter:function(value,row,index){  
            /* if (row.processStatus == '进行中'){ 
                return '<button type="button" id="status" id="btn_query"  class="btn btn-danger btn-xs" onclick="abortProc(\''+ row.processInstId + '\',\''+ row.processTempId + '\',\''+ row.processId + '\')" >关闭</button> '; 
            }else{ 
                return null; 
            } */  
            return null;  
         }  
    },{  
        field: 'processInstId',  
        title: '实例ID'  
    },{  
        field: 'processTempId',  
        title: '模板ID'  
    }, ],  
});  
  </script> 
</body> 
</html>