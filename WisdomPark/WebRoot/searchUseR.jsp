
<%@page import="com.wisdom.beans.User"%>
<%@page import="com.wisdom.dao.UserDao"%>
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    
    <%@ page import="java.util.*,com.wisdom.dao.PolicyDao,com.wisdom.beans.Policy" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
      <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>
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

<style type="text/css">
.btn
{
width:100px;

}


</style>
</head>
  
  <body>
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">用户管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li style="background:#AEEEEE;"  ><a href="#tab1">添加管理员</a></li> 
    <li style="background:#CDC5BF;" class="selected"><a href="#tab2"  class="selected">用户数据操作</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用用户添加功能！</div>
    
   	
         <form  class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addAdmin" >
    <ul class="forminfo">

   
    <li><label>账户号<b>*</b></label><input name="adminname" type="text" class="dfinput" value="账户"  style="width:518px;"/></li>
   
     <li><label>密码<b>*</b></label><input name="passward" type="text" class="dfinput" value="密码"  style="width:518px;"/></li>
  
  		
    <li><label>管理员角色<b>*</b></label>
    
    <div class="vocation" >
    <select class="select1" name="role" >
    <option value="admin">超级管理员</option>
    <option value="admin2">信息录入管理员</option>
    </select>
    </div>
    
    
    
    <li><label>&nbsp;</label><button type="submit" class="btn btn-primary" onclick="">保存</button>
   
   

    </ul>
      
         </form> 
    </div>
   
  
<!--编辑页面  -->
    
  	<div id="tab2" class="tabson">
  	
  	
<!--    查询操作 -->
    
    <form  method="post" action="${pageContext.request.contextPath}/searchUser"  > 
    <ul class="seachform">
    
    <li><label>综合查询</label>
    <input name=" " type="text" class="scinput" value=" " /></li>
   	
    
   
    
    <li><label>角色</label>  
    <div class="vocation" >
    <select class="select3" name="UserSearch">
    <option  value="admin" <c:if test="${UserRoleSearch eq 'admin'}">selected</c:if> >	超级管理员</option>
    <option value="admin2" <c:if test="${UserRoleSearch eq 'admin2'}">selected</c:if> >信息录入管理员</option>
     <option value="user" <c:if test="${UserRoleSearch eq 'user'}">selected</c:if> >普通用户</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label>
    <button type="submit" class="btn btn-primary" onclick="">搜索</button>
    
    </ul>
    
    </form> 
    
<!--     输出数据列表 -->

  <% UserDao dao=new UserDao();
	List<User> userlist=dao.findAllUser();
	for (User p : userlist) {
		System.out.println(p.getName());}
	  %>
	  
	  
	  
	   <div class="formbody">
    
    <div class="formtitle"><span>用户列表</span></div></div>

		<table  class="table table-striped"  >
					<thead>
		<tr style="border:1px solid; background:#66ccff">
		<th> </th>
			    <th>账号<i class="sort"><img src="images/px.gif" /></i></th>
        <th style="width:180px; ">密码</th>
        <th>角色</th> <th>邮箱</th> <th>电话</th>
         <th>操作</th> <th>操作</th>
		</tr>
	          </thead>
			  </table>
			  
			 
			  
			 <table  class="table table-striped"  id="idData"  id="barcon"> 
			   <tbody>
			   
			  <c:forEach items="${useSearchlist} %>" var="s4">
        <tr>
        
        
         <td><input name="" type="checkbox" value="" /></td>
        <td>${s4.name}</td>
        <td >${s4.password}</td>
       
				<td><c:if test="${s4.role eq'admin2'}" >信息录入管理员</c:if>
				<c:if test="${s4.role eq'admin'}" >超级管理员</c:if>
				<c:if test="${s4.role eq 'user'}">普通用户</c:if>
				</td>
				<td>${s4.email}</td>
				<td>${s4.phone}</td>
      <td><a href="getoneUSer?name=${s4.name}" class="glyphicon glyphicon-pencil btn-sm" >修改权限</a></td>
				 <td><a href="deleteOneUse?name=${s4.name}" class="glyphicon glyphicon-pencil btn-sm" >删除</a></td>
				 </tr>
       </c:forEach>
			
 
		</tbody>
  </table>
	   
 
	  
       
   
    
   <table width="500"  id="barcon"  style="float:right;  display:display:inline">
            <%
                  
            %>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
                  <%%>         
        </table>        
        <br/>
        
         <div id="barcon"></div>
  
  <script type="text/javascript">
window.onload=function(){
	goPage(1); 
};
</script>
  
    
    
    
    
    
   
     </div> 
    
    
    </div> 
       
	</div> 
	
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	
    
   
    
    </script>
   <script type="text/javascript">
   function goPage(pno){
	    var itable = document.getElementById("idData");
	    var num = itable.rows.length;//表格所有行数(所有记录数)
	    console.log(num);
	    var totalPage = 8;//总页数
	    var pageSize = 5;//每页显示行数
	    //总共分几页
	    if(num/pageSize > parseInt(num/pageSize)){
	        totalPage=parseInt(num/pageSize)+1;
	    }else{
	        totalPage=parseInt(num/pageSize);
	    }
	    var currentPage = pno;//当前页数
	    var startRow = (currentPage - 1) * pageSize+1;//开始显示的行  31
	    var endRow = currentPage * pageSize;//结束显示的行   40
	    endRow = (endRow > num)? num : endRow;    //40
	    console.log(endRow);
	    //遍历显示数据实现分页
	    for(var i=1;i<(num+1);i++){
	        var irow = itable.rows[i-1];
	        if(i>=startRow && i<=endRow){
	            irow.style.display = "table-row";
	        }else{
	            irow.style.display = "none";
	        }
	    }
	    var pageEnd = document.getElementById("pageEnd");
	    var tempStr = "<span>共"+totalPage+"页</span>";
	 
	 
	//.bind("click",{"newPage":pageIndex},function(event){
//	        goPage((pageIndex-1)*pageSize+1,(pageIndex-1)*pageSize+pageSize);
//	    }).appendTo('#pages');
	    if(currentPage>1){
	        tempStr += "<span class='btn' href=\"#\" onClick=\"goPage("+(1)+")\">首页</span>";
	        tempStr += "<span class='btn' href=\"#\" onClick=\"goPage("+(currentPage-1)+")\">上一页</span>";
	    }else{
	        tempStr += "<span class='btn'>首页</span>";
	        tempStr += "<span class='btn'>上一页</span>";
	    }
	 
	    for(var pageIndex= 1;pageIndex<totalPage+1;pageIndex++){
	    	
	        tempStr += "<a onclick=\"goPage("+pageIndex+")\"><span>"+ pageIndex +"</span></a>";
	    }
	 
	    if(currentPage<totalPage){
	        tempStr += "<span class='btn' href=\"#\" onClick=\"goPage("+(currentPage+1)+")\">下一页</span>";
	        tempStr += "<span class='btn' href=\"#\" onClick=\"goPage("+(totalPage)+")\">尾页</span>";
	    }else{
	        tempStr += "<span class='btn'>下一页</span>";
	        tempStr += "<span class='btn'>尾页</span>";
	    }
	 
	    document.getElementById("barcon").innerHTML = tempStr;
	 
	}
    </script>
  </body>
</html>
