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
<title>话题列表</title>
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<!-- 引入头部文件 -->
	<jsp:include page="/header.jsp" />         
<!-- 	"/a.html 表示 上一级的这个文件" -->
	
	<!--公告和版面列表-->
	<div class="mainbox">
		<table style="width:100%;" cellSpacing="0" cellPadding="0">
			<tr>
				<td style="text-align:left; padding-bottom:5px;">
					<a href="publish" target="_blank"><img src="images/post/post.gif" /></a>
				</td>				
			</tr>
		</table>
		<TABLE class="mainbox tableborder" cellSpacing=0 cellPadding=0 style="width:100%">
			<TR>
				<TH style="TEXT-ALIGN: center">
					状态
				</TH>
				<TH style="TEXT-ALIGN: center">主题</TH>
				<TH style="TEXT-ALIGN: center">
					作者
				</TH>
				<TH style="TEXT-ALIGN: center">
					回复
				</TH>
				<TH style="TEXT-ALIGN: center">
					最后更新
				</TH>
			</TR>
			<%-- <%
				List<Article> articles = (List<Article>) request.getAttribute("articles");
				for(Article article : articles) {
			 %> --%>
			<c:forEach items="${articles}" var="article">
				<TR class=trout onmouseover="this.className='tron'" onmouseout="this.className='trout'">
					<TD class=list1>
						<A href="SaveComment?id=${article.id}">
							<IMG border=0 title="在新窗口打开帖子" src="images/top3.gif" />
						</A>
					</TD>
					<TD class=list2>
						<SPAN>
							<%-- <%=article.getTitle()%> --%>
							${article.getTitle()}
						</SPAN>
					</TD>
					<TD class=list3>
						<%-- <A href="dispuser.asp?Name=<%=article.getCreatePerson()%>"><%=article.getCreatePerson()%></A> --%>
						<A href="dispuser.asp?Name=${article.getCreatePerson()}">${article.getCreatePerson()}</A>
					</TD>
					<TD class="list4">
						<%-- <SPAN><%=article.getTotalReply() %></SPAN> --%>
						<SPAN>${article.getTotalReply()}</SPAN>
					</TD>
					<TD class=list5>
						<%-- <A class=font10 href=""><%=article.getLastUpdateTime()%></A><BR/>
						by：<A href=""><%=article.getLastUpdatePerson()%></A> --%>
						<A class=font10 href="">${article.getLastUpdateTime()}</A><BR/>
						by：<A href="">${article.getLastUpdatePerson()}</A>
					</TD>
				</TR>
			</c:forEach>
			<%-- <%
				}
			 %> --%>
		</TABLE>
		<!--<div class="pager">
			第&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;5&nbsp;6&nbsp;7&nbsp;8&nbsp;9&nbsp;10&nbsp;页
		</div>-->
	</div>
	
	<!-- 引用底部文件 -->
	<jsp:include page="/footer.jsp"/>
</body>	
</html>
