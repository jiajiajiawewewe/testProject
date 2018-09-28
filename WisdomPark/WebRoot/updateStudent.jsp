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
            <label class="col-sm-2 control-label" for = "name">姓名：</label>  
            <div class="col-sm-4">  
                <input type = "text" class = "form-control" id = "name"   name="name"   placeholder = "姓名：" value="${name}" ></input>
                    
            </div>  
        </div> 
		
		

		 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "birth">密码：</label>  
            <div class="col-sm-4">  
                <input type = "date" class = "form-control" id = "birth"   name="birth"    value="${password }"></input>
                    
            </div>  
        </div> 
		
		
				 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "birth">密码：</label>  
            <div class="col-sm-4">  
                <input type = "date" class = "form-control" id = "birth"   name="birth"    value="${email }"></input>
                    
            </div>  
        </div> 
		
		
		
			
				 <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "birth">密码：</label>  
            <div class="col-sm-4">  
                <input type = "date" class = "form-control" id = "birth"   name="birth"    value="${phone }"></input>
                    
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