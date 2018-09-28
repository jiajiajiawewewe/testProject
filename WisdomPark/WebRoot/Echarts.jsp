
<%@page import="com.wisdom.beans.Notice"%>
<%@page import="com.wisdom.dao.NoticeDao"%>
<%@page import="com.wisdom.beans.User"%>
<%@page import="java.util.List"%>
<%@page import="com.wisdom.dao.UserDao"%>
<%@ page language="java"    import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html style="height: 100%">
   <head>
       <meta charset="utf-8">
       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/kindeditor/kindeditor-min.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/kindeditor/lang/zh_CN.js"></script>
       
       
     <!--   <动画效果图的bars做导航> -->
       
       <link href="yy/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="yy/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="yy/vendors/jGrowl/jquery.jgrowl.css" rel="stylesheet" media="screen">
    
    
    <!-- end -->



<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" >
$(function () { 
	$("[data-toggle='popover']").popover();
	$(function () { $("[data-toggle='tooltip']").tooltip(); });

});
</script>
       
     <!-- end -->  
       
   </head>
   
   <body style="height: 100%; margin: 0;background-image:url(images/xx.jpg)" >
 
 
 
 <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">统计</a></li>
    </ul>
    </div>
    
      <div class="row-fluid">
                       
                            <div class="block">
                                </div>
                                <div class="block-content collapse in">
                                    <div class="span12">
									
										
										<div class="progress progress-striped active">
											<div style="width: 60%;" class="bar"></div>
										</div>
										
										</div>
                                    </div>
                                </div>
                            </div>

 </div>
 </div>
    <div class="formbody">
    
    <div class="formtitle" "><span>统计信息</span></div></div>
  <%  UserDao dao=new UserDao();
	List<User> userlist=dao.findAllRo("admin");
	int l1=userlist.size();
	List<User> userlist2=dao.findAllRo("admin2");
	int l2=userlist2.size();
	List<User> userlist3=dao.findAllRo("user");
	int l3=userlist3.size();
	  %>
	  
	  <%  NoticeDao dao2=new NoticeDao();
	List<Notice> noit1=dao2.findAllCl("策划部");
	int c1=0;
	for(int i=0;i<noit1.size();i++)
	{
		Notice u=noit1.get(i);
		int x=Integer.parseInt(u.getClicknum());
		c1=c1+x;
	}
	List<Notice> noit2=dao2.findAllCl("宣传部");
	int c2=0;
	for(int i=0;i<noit2.size();i++)
	{
		Notice u=noit2.get(i);
		int x=Integer.parseInt(u.getClicknum());
		c2=c2+x;
	}
	List<Notice> noit3=dao2.findAllCl("资讯部");
	int c3=0;
	for(int i=0;i<noit3.size();i++)
	{
		Notice u=noit3.get(i);
		int x=Integer.parseInt(u.getClicknum());
		c3=c3+x;
	}
	List<Notice> noit4=dao2.findAllCl("后勤部");
	int c4=0;
	for(int i=0;i<noit4.size();i++)
	{
		Notice u=noit4.get(i);
		int x=Integer.parseInt(u.getClicknum());
		c4=c4+x;
	}
	  %>
	  
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

	 <div id="main1" style="width: 700px;height:500px; ;margin-left:300px;"></div>
	   <div class="formbody">
    
    <div class="formtitle" ><span>部门发布新闻点击量统计</span></div></div>
    <div id="main2" style="width: 770px;height:500px;;margin-left:300px;border:2px solid #C6D2E3; "></div>
     <div class="formtitle"><span>部门发布政策点击量统计</span></div></div>
  
    <div id="main3" style="width: 770px;height:500px;;margin-left:300px;"></div>
   

 <script type="text/javascript">
      //条形图
      (function(){
        var myChart = echarts.init(document.getElementById('main1'));
        var option = {
          title: {
            text: '用户比例'
          },
          tooltip: {},
          legend: {
            data:['人数']	
          },
          xAxis: {
            data:["普通用户","超级管理员","信息录入员"]
          },
          yAxis: {},
          series:[{
            name: '人数',
            type: 'bar',
            data: [<%=l1%>,<%=l2%>,<%=l3%>]
          }]
        };
        myChart.setOption(option);
        })();


        //饼图
      (function(){
        var myChart = echarts.init(document.getElementById('main2'));


        var option = {
          title: {
            text: '部门发布新闻点击量',
            x:'center'
          },
          tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)>"
            //饼图中{a}表示系列名称，{b}表示数据项名称，{c}表示数值，{d}表示百分比
          },
          legend: {//图例
            orient: 'vertical',
            left: 'left',
            data: ['策划部','宣传部','资讯部','后勤部']
          },
          series: [{
            name: '来源',
            type: 'pie',
            radius: '55%',
            data: [
                {value:<%=c1%>,name:'策划部'},
                {value:<%=c2%>,name:'宣传部'},
                {value:<%=c3%>,name:'资讯部'},
                {value:<%=c4%>,name:'后勤部'}
            ],


            itemStyle: {     //itemStyle有正常显示：normal，有鼠标hover的高亮显示：emphasis
              emphasis:{//normal显示阴影,与shadow有关的都是阴影的设置
                shadowBlur:10,//阴影大小
                shadowOffsetX:0,//阴影水平方向上的偏移
                shadowColor:'rgba(0,0,0,0.5)'//阴影颜色
              }
            }
          }]
        };
        myChart.setOption(option);




        })();


        //南丁格尔图
      (function(){
        var myChart = echarts.init(document.getElementById('main3'));


        var option = {
          backgroundColor:'#2c343c',//设置背景色
          title: {
            text: '部门政策发布点击量',
            textStyle: {
              color:'white'
            },
          },
          textStyle:{//文本的样式可以整体设置，也可以每个系列分别设置，如74行的label.normal.textStyle
            color:'white'
          },
          visualMap: {//用visualMap组件将数值的大小映射到明暗度
            show:false,//不显示组件，只用于明暗度映射
            min:1,//映射的最小值为80
            max:20,//映射的最大值为600
            inRange: {
              colorLightness: [0,1]//明暗度范围是0到1
            }
          },
          series:[{
            name: '来源',
            type: 'pie',
            radius: '55%',
            data: [
                {value:7,name:'美工部'},
                {value:5,name:'宣传部'},
                {value:6,name:'研发部'},
                {value:5,name:'产品部'},
                {value:10,name:'销售部'}
                //Echarts中每个扇形的颜色可以通过设置data数据项实现
                //如{value:400,name:'EEEE',itemStyle:{normal:{color:'#cccccc'}}},此时要将93行注解
            ],
            roseType:'angle',//南丁格尔图
            // label: {
            //     normal: {
            //         textStyle: {
            //             color: 'rgba(255, 255, 255, 0.3)'
            //         }
            //     }
            // },
            //label和labelLine都有正常显示：normal，有鼠标hover的高亮显示：emphasis
            labelLine: {//视觉引导线的颜色，不设置就是默认的彩色，设置为统一颜色
                normal: {
                    lineStyle: {
                        color: 'white'
                    }
                }
            },
            itemStyle : {     //itemStyle 有正常显示：normal，有鼠标hover 的高亮显示：emphasis
              normal :{//normal显示阴影,与shadow有关的都是阴影的设置
                color: '#c23531',//扇形的颜色
                shadowBlur:200,//阴影大小
                shadowOffsetX:0,//阴影水平方向上的偏移
                shadowOffsetY:0,//阴影垂直方向上的偏移
                shadowColor:'rgba(0,0,0,0.5)'//阴影颜色
              }
            }
          }]
        };
        myChart.setOption(option);
        })();
    </script>
    
   
    
   </body>
</html>