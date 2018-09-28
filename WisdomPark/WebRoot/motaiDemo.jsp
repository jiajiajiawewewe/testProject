<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>模态框</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>
<body>

<div class="container">
    <h3>创建模态框（Modal）</h3>
    <button class="btn btn-primary" data-toggle="modal" data-target="#myModal"  id ="btn_add"  >点击我显示模态框</button>
    <!--  定义模态框触发器，此处为按钮触发  -->
	
	

	



 -->        <div class="modal fade" id="myModal" style="width:1900px"   tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog modal-full">  
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->

                    <div class="btn-info modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>添加管理员</h4>
                        <!--  标题内容  -->
                    </div>

                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                                              <form class="form-horizontal"  method="post" action="${pageContext.request.contextPath}/addAdmin"  >
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-9">
                                    <input type="text" id="uname" name="adminname" class="form-control well" placeholder="请输入用户名"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="upwd" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-9">
                                    <input type="password" id="upwd" name="passward" class="form-control well" placeholder="请输入密码"/>
                                </div>
                            </div>
                            
                               <div class="form-group">
                           <label for="upwd" class="col-sm-2 control-label">角色</label>
    
 
    <select class="select1" name="role" >
    <option value="admin">超级管理员</option>
    <option value="admin2">信息录入管理员</option>
    </select>
    </div>
    
      <div class="modal-footer">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->
                        <button type="submit" class="btn btn-info" >确定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    </div>
    
                            
                        </form>
                    </div>

                  
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
    </form>
</div>

<!-- Bootstrap的所有插件都依赖于jQuery，必须在引入bootstrap.min.js前引入jQuery -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 压缩版的bootstrap.min.js包含了所有的Bootstrap数据API插件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<script type="text/javascript">

$("#btn_add").click(function () {  
    $("#myModalLabel").text("新增");  
  });
  
  
  
  //如何调用呢
 var initWinModal = function(){  
            //加入时间戳随机数id 区分模态框id，这样可以同时调用多个模态提示框  
            pid += "-"+Date.now().toString(16);  
            $(document.body).append('<div id="'+pid+'" class="modal fade bs-example-modal-sm" aria-hidden="true" data-backdrop="static"></div>');  
            $("#"+pid).append('<div id="'+pid+'-body" class="modal-dialog modal-sm">'+  
                '<div class="modal-content">'+  
                    '<div class="modal-header">'+  
                        '<a id="'+pid+'-WinClose" class="close" data-dismiss="modal">'+_CONST.ualertContent.closeBtn+'</a>'+  
                        '<h3 class="mah3">'+_CONST.ualertContent.title+'</h3>'+  
                    '</div>'+  
                    '<div id="'+pid+'-content" class="modal-body mabody">'+  
                    '</div>'+  
                    '<div class="modal-footer mafooter">'+  
                        '<a id="'+pid+'-bSure" data-toggle="modal"  data-dismiss="modal"  class="btn mabun">'+_CONST.ualertContent.sureCn+'</a>'+  
                        '<a id="'+pid+'-bClose" href="#" data-dismiss="modal" class="btn mabun">'+_CONST.ualertContent.closeCn+'</a>'+  
                    '</div>'+  
               ' </div>'+  
            '</div>');  
            initDomVar();  
            initContentBindButton();  
        };  
        
        
        
        var initContentBindButton = function(){  
            //初始化提示内容  
            if(content === undefined || content === null){  
                content = "hhhmn";  
            }  
            getDom.bmaContent().html("<p>"+content+"</p>");  
            //初始化按钮事件  
            //确定按钮  
            getDom.bmaButtonSure().unbind('click');  
            getDom.bmaButtonSure().on('click',function(){  
                _CONST.alertClickFlag = '0';  
            });  
            //窗口x关闭按钮  
            getDom.bmaButtonWinClose().unbind('click');  
            getDom.bmaButtonWinClose().on('click',function(){  
                _CONST.alertClickFlag = '1';  
            });  
            //关闭按钮  
            getDom.bmaButtonClose().unbind('click');  
            getDom.bmaButtonClose().on('click',function(){  
                _CONST.alertClickFlag = '1';  
            });  
            //隐藏窗口事件  
            getDom.bMsgAlert().off('hidden.bs.modal');  
            getDom.bMsgAlert().on('hidden.bs.modal', function(event) {  
                //移除dom  
                getDom.bMsgAlert().remove();  
                if(_CONST.alertClickFlag === '0'){  
                    if(scb&&typeof(scb) === 'function'){  
                        scb();  
                    }  
                }else if(_CONST.alertClickFlag === '1'){  
                    if(ccb&&typeof(ccb) === 'function'){  
                        ccb();  
                    }  
                }  
            });  
        };  
        </script>


</body>
</html>