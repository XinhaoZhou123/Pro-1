<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>课程首页图片页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
		<link rel="stylesheet" href="../assets/css/amazeui.min.css" />
	    <link rel="stylesheet" href="../assets/css/admin.css">
	    <link rel="stylesheet" href="../assets/css/app.css">
		<script src="../assets/js/jquery.min.js"></script>
    	<script src="../assets/js/amazeui.min.js"></script>
    	<script src="../assets/js/app.js"></script>
		<style>
			.layui-card {margin: 35px 45px 45px 0; border-radius: 10px;}
			.layui-card-header {
				font-size: large; 
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
			}
			body {font-family: '宋体'; background-color: #F8F8FF;}
			#demo1 {width: 100%; height: 450px; margin-bottom: 3%;}
			.am-btn {background-color: #009E94; border: none;}
		</style>
		<script type="text/javascript">
            function IFrameResize()
            {
                    //得到父页面的iframe框架的对象
                var obj = parent.document.getElementById("myFrame");
                    //把当前页面内容的高度动态赋给iframe框架的高
                obj.height = this.document.html.height;
            } 
        </script>
	</head>

	<body class="layui-layout-body" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin" style="margin: 0px 50px 0px 0px;">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-header layui-colla-title">朋友圈消息列表</div>
					  <div class="am-g">
                        <div class="tpl-table-images">
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-7">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                                    <div class="tpl-i-title">
                                                                                无阅读，不生活
                                    </div>
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                      <div class="layui-row layui-col-space10">
                                    	<div class="layui-col-md6">
                                        <img src="../images/6.jpg" style="height: 200px;">
                                        </div>
                                        <div class="layui-col-md6">
                                        <img src="../images/yuantiao.jpg" style="height: 200px;">
                                        </div>
                                      </div>
                                    </a>
                                    <div class="tpl-table-images-content-block">
                                        <div class="tpl-i-more">
                                            <ul>
                                                <li><span class="layui-icon layui-icon-praise"> 100+</span></li>
                                                <li><span class="layui-icon layui-icon-reply-fill"> 235+</span></li>     
                                                <li><a href="messageReview.jsp"><span class="layui-icon layui-icon-right">查看评论</a></li>
                                            </ul>
                                        </div>
                                        <br />
                                        <div class="am-btn-toolbar" style="margin-left: 42%;">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
                                                <button type="button" class="am-btn am-btn-default am-btn-danger">
                                                	<span class="am-icon-trash-o"></span> 删除
                                                </button>
                                               <!-- <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span>查看评论</button>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-5">
                            	<div class="tpl-portlet-components">
					            	<div class="portlet-title">
					                    <div class="caption" style="font-family: '宋体';">
					                       		 评论列表
					                    </div>
					                </div>
					                <div class="tpl-block">
					                    <div class="am-g" style="margin-left: 80%;">
					                        <div class="am-u-sm-12 am-u-md-6">
					                            <div class="am-btn-toolbar">
					                                <div class="am-btn-group am-btn-group-xs">
					                                  
					                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					
					                    <ul class="tpl-task-list">
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 梅西：我今晚回家了</span>
					                            </div>
					                        </li>
					
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> C罗：我跟你一起</span>
					                            </div>
					                        </li>
					
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 内马尔：等我一晚上，我跟你们一起 </span>
					                            </div>
					                        </li>            
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                    </ul>
					               	</div>
									<div id="test1" style="margin-top: 10px; margin-left: 10%;"></div>
					            </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-7">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                                    <div class="tpl-i-title">
                                                                                无阅读，不生活
                                    </div>
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                      <div class="layui-row layui-col-space10">
                                    	<div class="layui-col-md6">
                                        <img src="../images/6.jpg" style="height: 200px;">
                                        </div>
                                        <div class="layui-col-md6">
                                        <img src="../images/yuantiao.jpg" style="height: 200px;">
                                        </div>
                                      </div>
                                    </a>
                                    <div class="tpl-table-images-content-block">
                                        <div class="tpl-i-more">
                                            <ul>
                                                <li><span class="layui-icon layui-icon-praise"> 100+</span></li>
                                                <li><span class="layui-icon layui-icon-reply-fill"> 235+</span></li>     
                                                <li><a href="messageReview.jsp"><span class="layui-icon layui-icon-right">查看评论</a></li>
                                            </ul>
                                        </div>
                                        <br />
                                        <div class="am-btn-toolbar" style="margin-left: 42%;">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
                                                <button type="button" class="am-btn am-btn-default am-btn-danger">
                                                	<span class="am-icon-trash-o"></span> 删除
                                                </button>
                                               <!-- <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span>查看评论</button>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-5">
                            	<div class="tpl-portlet-components">
					            	<div class="portlet-title">
					                    <div class="caption" style="font-family: '宋体';">
					                       		 评论列表
					                    </div>
					                </div>
					                <div class="tpl-block">
					                    <div class="am-g" style="margin-left: 80%;">
					                        <div class="am-u-sm-12 am-u-md-6">
					                            <div class="am-btn-toolbar">
					                                <div class="am-btn-group am-btn-group-xs">
					                                  
					                                    <button type="button" class="am-btn am-btn-default am-btn-danger">
					                                    	<span class="am-icon-trash-o"></span> 删除
					                                    </button>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					
					                    <ul class="tpl-task-list">
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 梅西：我今晚回家了</span>
					                            </div>
					                        </li>
					
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> C罗：我跟你一起</span>
					                            </div>
					                        </li>
					
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 内马尔：等我一晚上，我跟你们一起 </span>
					                            </div>
					                        </li>            
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                        <li>
					                            <div class="task-checkbox">
					                                <input type="hidden" value="1" name="test">
					                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
					                            <div class="task-title">
					                                <span class="task-title-sp"> 姆巴佩：红红火火恍恍惚惚 </span>
					                            </div>
					                        </li>  
					                    </ul>
					               	</div>
									<div id="test2" style="margin-top: 10px; margin-left: 10%;"></div>
					            </div>
                            </div>
                            <div id="test3" style="margin-top: 20px; margin-left: 37%;"></div>
                        </div>
                      </div>
					</div>
				</div>
			</div>
		</div>
		<script src="../layui/layui.js"></script>
		<script>
		layui.use('laypage', function(){
		  var laypage = layui.laypage;
		  
		  //执行一个laypage实例
		  laypage.render({
		    elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
		    ,count: 50 //数据总数，从服务端得到

		  });
		});
		</script>
		<script>
		layui.use('laypage', function(){
		  var laypage = layui.laypage;
		  
		  //执行一个laypage实例
		  laypage.render({
		    elem: 'test2' //注意，这里的 test1 是 ID，不用加 # 号
		    ,count: 50 //数据总数，从服务端得到

		  });
		});
		</script>
		<script>
		layui.use('laypage', function(){
		  var laypage = layui.laypage;
		  
		  //执行一个laypage实例
		  laypage.render({
		    elem: 'test3' //注意，这里的 test1 是 ID，不用加 # 号
		    ,count: 50 //数据总数，从服务端得到
		  });
		});
		</script>
	</body>
</html>
