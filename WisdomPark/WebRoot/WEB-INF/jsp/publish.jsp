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
<link rel="stylesheet" type="text/css" href="/WisdomPark/forum/css/default.css" />
<script type="text/javascript" src="/WisdomPark/forum/js/jquery.min.js"></script>
<script type="text/javascript" src="/WisdomPark/forum/js/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" src="/WisdomPark/forum/js/kindeditor/lang/zh_CN.js"></script>
</head>
<body>
	<div id="top" class="header">
		<table width="100%">
			<tr>
				<td width="200" style="padding-top:16px">
					<img src="images/logo.png" />
				</td>
			</tr>
		</table>
	</div>
	
	<div class="mainbox">
		<div class="nav">
			<div style="float:left;">
				<img src="/WisdomPark/forum/images/forum_readme.gif" />
				<a href="${pageContext.request.contextPath}/ListAtricle">主题列表</a>&nbsp;》&nbsp;
			</div>
		</div><br/>
		<table class="topic border" style="width:100%; border-bottom-color: currentColor; border-bottom-width: 0px; border-bottom-style: none;" cellSpacing="0" cellPadding="0">
			<tr>
				<th>
					<h1>发表帖子</h1>
				</th>
			</tr>
		</table>
		<form id="articleForm" action="SaveArticle" method="post">
			<table class="tablebox border" cellSpacing="0" cellPadding="0" style="width:100%;">	
				<tr id="upload_input">
					<td style="background: rgb(250, 253, 255); border-bottom-color: rgb(228, 231, 236); border-bottom-width: 1px; border-bottom-style: solid;" class="infoleft leftcolor" vAlign="middle" align="left">
						<font color=red>*</font>主题标题：
					</td>
					<td style="background: rgb(250, 253, 255); padding: 5px; border-bottom-color: rgb(228, 231, 236); border-bottom-width: 1px; border-bottom-style: solid;">
						<input id="title" class="FormClass" name="title" size="45">
						<span id="mode_chk"></span>
						&nbsp;（不得超过 200 个汉字）<span id="topic_chk"></span>
					</td>
				</tr>
				<tr>
					<td style="background: rgb(250, 253, 255); padding: 10px 20px;" class="infoleft leftcolor" vAlign="top" align="left">
						<font color=red>*</font>帖子内容：
					</td>
					<td style="margin: 0px; padding: 0px;">
						<textarea name="content" style="width: 100%; height: 200px; visibility: hidden;"></textarea>
					</td>
				</tr>
				<tr>
					<td style="text-align: center; padding:5px;" class="tablebody2" colspan="2">
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
				
		
<div class="bdsharebuttonbox">
<a href="javascript:void(0)" class="bds_more" data-cmd="more"></a>
<a href="javascript:void(0)" class="bds_more" data-cmd="more"></a>
<a href="javascript:void(0)" class="bds_qzone" data-cmd="qzone"></a>
<a href="javascript:void(0)" class="bds_tsina" data-cmd="tsina"></a>
<a href="javascript:void(0)" class="bds_tqq" data-cmd="tqq"></a>
<a href="javascript:void(0)" class="bds_renren" data-cmd="renren"></a>
<a href="javascript:void(0)" class="bds_weixin" data-cmd="weixin"></a>
</div>
<script>
window._bd_share_config = {
"common" : {
"bdSnsKey" : {},
"bdText" : "",
"bdMini" : "2",
"bdPic" : "",
"bdStyle" : "0",
"bdSize" : "16"
},
"share" : {},
"image" : {
"viewList" : [ "qzone", "tsina",
"tqq", "renren", "weixin" ],
"viewText" : "分享到：",
"viewSize" : "16"
},
"selectShare" : {
"bdContainerClass" : null,
"bdSelectMiniList" : [ "qzone",
"tsina", "tqq", "renren",
"weixin" ]
}
};
with (document)0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+ ~(-new Date() / 36e5)];
</script>

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
</script>
