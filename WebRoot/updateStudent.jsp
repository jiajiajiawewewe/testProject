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
</head>
<body style="padding: 20px;">
 <!--class="form-horizontal"  class是控制样式 --> 
  <form role = "form"  name="form1" class="form-horizontal" method="post" action="updateOneStudent">  
  
  <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "xuehao">学号：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "xuehao"   name="xuehao"   placeholder = "学号：" value="${s.xuehao }"></input>
                    
            </div>  
        </div> 
		
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">姓名：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name"   name="name"   placeholder = "姓名：" value="${s.name }" ></input>
                    
            </div>  
        </div> 
		
		
   <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "sex">性别：</label>  
           <div class="col-sm-4"> 								
                     <label class="checkbox-inline">			
						<input type="radio" name="sex" id="sex" value="男" <c:if test="${s.sex eq '男'}"> checked="checked"</c:if>><span>男</span>
						<input type="radio" name="sex"  id="sex" value="女" <c:if test="${s.sex eq '女'}"> checked="checked"</c:if>><span>女</span>
			</label>					
           </div>  
        </div>  
		
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "birth">生日：</label>  
            <div class="col-sm-4">  
                <input type = "date" class = "form-control" id = "birth"   name="birth"    value="${s.birth }"></input>
                    
            </div>  
        </div> 
		
		
		
		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "fangxiang">技术方向</label>  
            <div class="col-sm-4">  
                <select id = "fangxiang" name="fangxiang" class = "form-control">  
                    <option>java</option>  
                    <option>C</option>  
                    <option>C++</option>  
                    <option>Linux</option>  
                </select>  
            </div>  
        </div>
		
		    <div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary" onclick="">保存</button>
			<button type="reset" class="btn btn-primary">提交</button>
		</div>
		</div>
  
   </form>
</body> 
</html>