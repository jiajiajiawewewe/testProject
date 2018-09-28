<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>话题</title>
<link rel="stylesheet" type="text/css" href="forum/css/default.css" />
<script src="forum/js/kindeditor/kindeditor-min.js"	type="text/javascript"></script>
<script src="forum/js/kindeditor/lang/zh_CN.js"	type="text/javascript"></script>
</head>
<body>
	<!-- 引入头部文件 -->
	<jsp:include page="/header.jsp" />
	
	<!--公告和版面列表-->
	<div class="mainbox">
		<div class="nav">
			<div style="float:left;">
				<img src="images/forum_readme.gif" />
				<a href="${pageContext.request.contextPath}/ListAtricle">主题列表</a>&nbsp;》&nbsp;${article.title }
			</div>
		</div><br/>
		<table style="width:100%; margin-bottom: -5px;" cellSpacing="0" cellPadding="0">
			<tr>
				<td style="text-align: left;">
					<a href="ListAtricle"><img src="images/post//post_reply.gif" /></a>&nbsp;
				</td>
			</tr>
		</table>
		<table class="topic border" style="width:100%; border-bottom-color: currentColor; border-bottom-width: medium; border-bottom-style: none; margin-top:10px;" cellSpacing="0" cellPadding="0">
			<tr>
				<th colspan="5">
					<h1 style="float:left;">${article.title } </h1>
					<span style="float:right">Post By：${article.createTime }</span>
				</th>
			</tr>
		</table>
		
		<!-- 主题帖子 -->
		<table class="bbslist border" style="width:100%; table-layout: fixed; word-break: break-all;" 
			cellSpacing="0" cellPadding="0">
			<tr>
				<td class="infoleft leftcolor" vAlign="top" rowSpan="3"><br>
					<span><img src="images/male.gif" title="发布者">&nbsp;${article.createPerson }</span>
				</td>
				<td style="line-height: 120%;" class="inforight" vAlign="top">
					<table cellSpacing="0" cellPadding="0">
						<tr>
							<td>
								<div style="text-indent: 24px; overflow: hidden; font-size: 9pt; word-break: break-all; word-wrap: break-word;" id="textstyle_1">
									${article.content }
								</div>
							</td>
						</tr>
					</table><br>
				</td>
			</tr>
		</table>
		
		<c:forEach items="${articleReplys }" var="articleReply" varStatus="status">
			<table class="bbslist border" style="width:100%; table-layout: fixed; word-break: break-all;" cellSpacing="0" cellPadding="0">
				<tr>
					<td style="background: rgb(250, 253, 255); border-bottom-color: rgb(228, 231, 236); border-bottom-width: 1px; border-bottom-style: solid;" class="infoleft leftcolor" vAlign="middle">
						
					</td>
					<td class="usermenu">
						<em>${status.count}楼</em>
					</td>
				</tr>
				<tr>
					<td class="infoleft leftcolor" vAlign="top" rowSpan="3"><br/>
						<span><img src="images/male.gif" title="发布者">&nbsp;${articleReply.createPerson}</span>					
					</td>
					<td style="line-height: 120%;" class="inforight" vAlign="top">
						<b style="line-height: 15px; font-size: 12px;">${article.title}</b>&nbsp;&nbsp;
						<span style="line-height: 20px;" class="font10">
							Post By：${articleReply.createTime} 
						</span> 
						<table cellSpacing="0" cellPadding="0">
							<tr>
								<td>
									<div style="text-indent: 24px; overflow: hidden; font-size: 9pt; word-break: break-all; word-wrap: break-word;" id="textstyle_1">
										${articleReply.content}
									</div>
								</td>
							</tr>
						</table><br>
					</td>
				</tr>
			</table>
		</c:forEach>
		<!-- 
			onsubmit事件：提交表单的之前就会触发该事件指定的JavaScript代码
			如果该事件返回false,那么表单就不会被提交；如果返回true，就会提交表单。
		 -->
		<!-- 回复 -->
		<form action="ReplyServlet" method="post" onsubmit="return check()">
			<table class="tablebox border" cellSpacing="0" cellPadding="0" style="width:100%;">		
				<tr>
					<td style="background: rgb(250, 253, 255); padding: 10px; text-align: center;" class="infoleft leftcolor" vAlign="center" align="center">
						请输入回复内容：
					</td>
					<td style="margin: 0px; padding: 0px;">
						<span id="reply">
							<textarea id="content" name="content" style="width: 100%; height: 200px; visibility: hidden;"></textarea>
						</span>
					</td>
				</tr>
				<tr>
					<td class="infoleft leftcolor" vAlign="top" align="center">
					</td>
					<td>
						<input style="margin: 3px 3px 3px 0px;" id="submit" class="input0" name="submit" value="OK!发表回复" type="submit"> 
						<!-- 表单隐藏文本域 -->
						<input type="hidden" name="articleId" value="${article.id}"/>
						<span id="body_chk"></span> 
					</td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- 引用底部文件 -->
	<jsp:include page="/footer.jsp" />
</body>	
</html>
<script type="text/javascript">
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="content"]', {
			resizeType : 1,
			allowPreviewEmoticons : false,
			allowImageUpload : false,
			items : [ 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor',
					'bold', 'italic', 'underline', 'removeformat', '|',
					'justifyleft', 'justifycenter', 'justifyright',
					'insertorderedlist', 'insertunorderedlist', '|',
					'link' ],
			afterCreate : function() {
				this.sync();
			},
			afterBlur : function() {
				this.sync();
			}
		});
	});
	
	//验证表单的方法
	function check() {
		//获取回复的内容
		var content = $("#content").val();
		
		if(content == "") {
			alert("回复内容不能为空");
			return false;
		}
		return true;
	}
</script>
