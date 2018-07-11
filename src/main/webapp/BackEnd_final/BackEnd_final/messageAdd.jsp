<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>朋友圈发布页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
		
		<style>
			.layui-card {margin: 35px 45px 45px 0; text-align: center; border-radius: 10px;}
			.layui-card-header {
				font-size: large; 
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
			}
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

	<body class="layui-layout-body" 
		style="font-family: '宋体'; background-color: #F8F8FF;" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin">
			

				<!-- 内容主体区域 -->
			  <div style="background-color: white; 
			  	margin: 0px 50px 0px 0px; background-color: #F8F8FF;">
			  	<form class="layui-form"  lay-filter="example" style="font-family: '宋体';">
				  	<div class="layui-col-md6">
				      <div class="layui-row">
				      	<div class="layui-collapse">
					      	<div class="layui-col-md12 layui-colla-item">
					        	<div class="layui-card">
									<div class="layui-card-header layui-colla-title">图片</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="padding-left: 3%;">
									  <div class="layui-upload" style="text-align: left;">
										<button type="button" class="layui-btn" id="test2">选择多张图片</button>
										<blockquote class="layui-elem-quote layui-quote-nm" 
											style="margin-top: 10px; height: 400px;">
											预览图：
											<div class="layui-upload-list" id="demo2"></div>
										</blockquote>
									  </div>
									</div>
								</div>
					      	</div>
				      	</div>
					  </div>
					</div>
				  	<div class="layui-col-md6">
				  	  <div class="layui-row">
				  	  	<div class="layui-collapse">
							<div class="layui-col-md12 layui-colla-item">
								<div class="layui-card">
									<div class="layui-card-header layui-colla-title">消息标题</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="height: 50px; line-height: 50px;">
										<input type="text" placeholder="消息标题" class="layui-input" />
									</div>
								</div>
							</div>
							<div class="layui-col-md12 layui-colla-item">
								<div class="layui-card">
									<div class="layui-card-header layui-colla-title">消息内容</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="text-align: left;">
										<textarea placeholder="请输入发布朋友圈的详细信息" 
											class="layui-textarea" style="overflow-x: hidden;"></textarea>
									</div>
								</div>
							</div>
					  	</div>
					  	<div class="layui-form-item">
							<button class="layui-btn" type="submit" style="margin: 25% 0 0 42%;">
								<a href="enterpriseModify.jsp" style="color: white;">发表</a>
							</button>
						</div>	
					  </div>
					</div>	
				</form>
			  </div>
		</div>
		 
		<script type="text/javascript" src="../layui/layui.js"></script>
		<script>
		//JavaScript代码区域
		layui.use('layer ', function(){
			var layer = layui.layer ;
		});
		layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		});
		</script>
		<script>
			layui.use('upload', function() {
				var $ = layui.jquery,
					upload = layui.upload;

				upload.render({
					elem: '#test2',
					url: '/upload/',
					multiple: true,
					before: function(obj) {
						//预读本地文件示例，不支持ie8
						obj.preview(function(index, file, result) {
							$('#demo2').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img" style="width:150px;height:100px;margin-right:10px;">')
						});
					},
					done: function(res) {
						//上传完毕
					}
				});
			});
		</script>
	</body>
</html>