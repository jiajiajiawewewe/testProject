<%@page import="com.wisdom.dao.StudentDao"%>
<%@page import="com.wisdom.beans.Student"%>
<%@page import="java.util.ArrayList"%>
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
<script language="JavaScript" src="js/jquery.js"></script>
</head>

<body style="padding: 20px;">

 <!--新增 部分 -->
 
  <div id="reportTableDiv" >  
        <table id="reportTable"></table>  
    </div>  	

 <script type="text/javascript">  
    //手动制造30条数据  
    var datas  = [];  
    for(var i=0;i<30;i++){  
        datas[i]={"name":"傻逼"+i+"号","age":"年龄："+i+"岁","sex":"男"+i}  
    }  
      
    $(function () {  
        $('#reportTable').bootstrapTable({  
            method: 'get',  
            cache: false,  
            height: 400,  
            striped: true,  
            pagination: true,  
            pageSize: 20,  
            pageNumber:1,  
            pageList: [10, 20, 50, 100, 200, 500],  sidePagination:'client',  
            search: true,  
            showColumns: true,  
            showRefresh: false,  
            showExport: false,  
            exportTypes: ['csv','txt','xml'],  
            search: true,  
            clickToSelect: true,  
            columns:   
            [  
                {field:"checked",checkbox:true},  
                {field:"name",title:"测试姓名",align:"center",valign:"middle",sortable:"true"},  
                {field:"age",title:"年龄",align:"center",valign:"middle",sortable:"true"},  
                {field:"sex",title:"性别",align:"center",valign:"middle",sortable:"true"},  
            ],  
            data:datas,  
        });                                       
    });   
    </script>  
<div>  
       
     <div id="toolbar" class="btn-group">  
            <button id="btn_add" type="button" class="btn btn-default">  
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增  
            </button>  
            <button id="btn_edit" type="button" class="btn btn-default">  
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改  
            </button>  
            <button id="btn_delete" type="button" class="btn btn-default">  
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除  
            </button>  
        </div>  

<!-- 结尾 -->
		<table  class="table table-striped"  >
					<thead>
		<tr >
			    <td>学号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>生日</td>
				<td>方向</td>
				<td>编辑图书信息</td>
				<td>删除</td>
		</tr>
	          </thead>
			  
			  
			  
			   <tbody>
			 <c:forEach items="${studentlist1}" var="s">
			   <tr>
                <td>${s.xuehao}</td>
				<td>${s.name}</td>
				<td>${s.sex}</td>
				<td>${s.age}</td>
				<td>${s.birth}</td>
				<td>${s.fangxiang}</td>
				
				<td><a href="getOneStudent?xuehao=${s.xuehao}" class="glyphicon glyphicon-pencil btn-sm" >修改</a></td>
				 <td><a href="deleteOneStudent?xuehao=${s.xuehao}" class="glyphicon glyphicon-pencil btn-sm" >删除</a></td>
				 </tr>
			
       </c:forEach>
			
 
		</tbody>
  </table>
</body> 
</html>