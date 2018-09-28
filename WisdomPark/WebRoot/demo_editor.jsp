<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo_editor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="editor/kindeditor.js"></script>
  </head>
  
  <body>
   

<script>
  KindEditor.ready(function(K) {
   var editor1 = K.create('textarea[name="content1"]', {
    cssPath : '../plugins/code/prettify.css',
    uploadJson : './kindeditor/jsp/upload_json.jsp',
    fileManagerJson : '../jsp/file_manager_json.jsp',
    allowFileManager : true,
    afterCreate : function() {
     var self = this;
     K.ctrl(document, 13, function() {
      self.sync();
      document.forms['example'].submit();
     });
     K.ctrl(self.edit.doc, 13, function() {
      self.sync();
      document.forms['example'].submit();
     });
    }
   });
   prettyPrint();
  });
 </script>
</head>
<body>
 <%=htmlData%>
 <form name="example" method="post" action="demo.jsp">
  <textarea name="content1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
  <br />
  <input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)
 </form>
</body>
</html>

  </body>
</html>
