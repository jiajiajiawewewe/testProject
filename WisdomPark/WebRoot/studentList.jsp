
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    
    <%@ page import="java.util.*,com.wisdom.dao.PolicyDao,com.wisdom.beans.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
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


  <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
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
</head>

<body style="padding: 20px;">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">学生</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>学生列表</span></div></div>

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
  
<%-- <%
StudentDao dao=new StudentDao();
List<Student> stulist2=dao.findAllStudent();
//吧数据存储到request域对象中
System.out.println(stulist2.get(1).getAge());

  %> --%>
  
  
  <%-- <%  for(int i = 0;i<stulist2.size();i++){ %>
                        <div class="col-md-4">
                            <div class="thumbnail">
                            <%Student u= stulist2.get(i); %>
                                <img alt="300x200" src="<%=u.getXuehao()%>" />
                                <div class="caption">
                                    
                                    <h3>
                                        <%=u.getName()%>
                                    </h3>
                                    <p>
                                       <%=u.getName()%>
                                    </p>
                        
                   <form id="tijiao" name="tijiao" action="" method="post">
                        <input type="text" style="display: none" name="ChooseCompany" id="ChooseCompany" value="<%=u.getName()%>"/>
                        <input  class="btn btn-primary" type="submit"   value="Details"/>
                    </form> 
                            
                                </div>
                            </div>
                        </div>                   
                       <%} %>
  
   --%>
  
  
</body> 
</html>