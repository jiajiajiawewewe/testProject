<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布话题</title>
    
     <!--   <动画效果图的bars做导航> -->
       
       <link href="yy/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="yy/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="yy/vendors/jGrowl/jquery.jgrowl.css" rel="stylesheet" media="screen">
    
    
    <!-- end -->
<link rel="stylesheet" type="text/css" href="/WisdomPark/forum/css/default.css" />
<script type="text/javascript" src="/WisdomPark/forum/js/jquery.min.js"></script>
<script type="text/javascript" src="/WisdomPark/forum/js/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" src="/WisdomPark/forum/js/kindeditor/lang/zh_CN.js"></script>




</head>
<body>

	<div class="mainbox" >
		<table class="topic border" style="width:100%; border-bottom-color: currentColor; border-bottom-width: 0px; border-bottom-style: none;" cellSpacing="0" cellPadding="0">
			<tr>
				<th>
					<h1>发表帖子</h1>
					
					
					 <div class="row-fluid">
                       
                            <div class="block">
                                </div>
                                <div class="block-content collapse in">
                                    <div class="span12">
									
										
										<div class="progress progress-striped active">
											<div style="width: 90%;" class="bar"></div>
										</div>
										
										</div>
                                    </div>
                                </div>
                            </div>

 </div>
 </div>
					
					
				</th>
			</tr>
		</table>
		<form id="articleForm" action="saveRelyAdmin" method="post">
			<table class="tablebox border" cellSpacing="0" cellPadding="0" style="width:100%;">	
			 
					 
				 
				<tr>
					<td style="background: rgb(250, 253, 255); padding: 10px 20px;" class="infoleft leftcolor" vAlign="top" align="left">
						<font color=red>*</font>回复内容：
					</td>
					<td style="margin: 0px; padding: 0px;">
						<textarea name="content" style="width: 100%; height: 200px; visibility: hidden;"></textarea>
					</td>
				</tr>
				<tr>
					<td style="text-align: center; padding:5px;" class="tablebody2" colspan="2">
					 <input type="hidden" name="articleId" value="${article.id }"/>
						<input id="submit" class="input0" value="  发 表  " type="submit" />&nbsp;
						<input class="input0" onclick="window.close();" value="  取 消  " type="button" />
						<input type="hidden" name="id" value="" />
					</td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!---------------end 底部友情链接部分------------------->
	<div class="copyright">
		

		
		
</body>	
</html>
<script type="text/javascript">
		var editor;
		
		KindEditor.ready(function(K) {
			editor = K.create('textarea[name="content"]', {
				resizeType : 1,
				allowPreviewEmoticons : true,
				allowImageUpload : true,
				items : [  'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
				           'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
				           'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
				           'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
				           'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
				           'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
				           'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
				           'anchor', 'link', 'unlink', '|', 'about'],
				afterCreate : function() {
					this.sync();
				},
				afterBlur : function() {
					this.sync();
				}
			});
		});
</script>
