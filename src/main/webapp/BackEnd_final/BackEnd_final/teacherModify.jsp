<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>教师信息修改页</title>
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
			#allmap {width: 100%;height: 400px;margin:0;font-family:"微软雅黑"}
			
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
									<div class="layui-card-header layui-colla-title">教师图片</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="padding-left: 3%;">
									  
										<img src="" name="teacher_img" class="layui-upload-img" 
											id="demo1" style="width: 100%;"><br /><br />
										<button type="button" class="layui-btn" id="btn_delete">
											删除图片</button>
										<button type="button" class="layui-btn" id="btn_upload">
											上传图片</button>
										<div class="layui-inline layui-word-aux">
											文件最大限制为1M
										</div><br /><br />
										<p id="demoText"></p>
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
									<div class="layui-card-header layui-colla-title">教师姓名</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="height: 50px; line-height: 50px;">
										<input name="teacher_name" type="text" class="layui-input" />
									</div>
								</div>
							</div>
							<div class="layui-col-md12 layui-colla-item">
								<div class="layui-card">
									<div class="layui-card-header layui-colla-title">教师简介</div>
									<div class="layui-card-body layui-colla-content layui-show" 
										style="text-align: left;">
										<textarea name="teacher_intro" class="layui-textarea" 
											style="overflow-x: hidden;"></textarea>
									</div>
								</div>
							</div>
						  </form>
					  	</div>
					  	<div class="layui-form-item">
							<button type="submit" class="layui-btn" style="margin: 25% 0 0 36%;">
								<a href="enterpriseModify.jsp" style="color: white;">保存教师信息</a>
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
			layui.use(['form', 'upload'], function() {
				var form = layui.form,
					layer = layui.layer,
					$ = layui.jquery,
					upload = layui.upload;

				//监听提交
				form.on('submit(demo1)', function(data) {
					layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					})
					return false;
				});

				$("#btn_delete").click(function() {
					$("#demo1").attr("src", "");
					$("#demo1").hide();
				});

				$("#demo1").attr("src", "../images/teacher4.jpg");

				form.val('example', {
					"teacher_name": "费园园" // "name": "value"
						,
					"teacher_intro": "主要从事HTML5、Java开源领域及Android移动开发，在东软集团担任过6年的软件工程师，2年半的HTML5、JAVA培训讲师，承担过东北大学，北交大等重点高校培训项目。"
				});

				//if(document.getElementById("#demo1").getAttribute('src')!=""){
				//	$("#btn_upload").DISABLED;
				//}

				upload.render({
					elem: '#btn_upload',
					url: '/upload/',
					size: 1024,
					before: function(obj) {
						//预读本地文件示例，不支持ie8
						obj.preview(function(index, file, result) {
							$('#demo1').attr('src', result); //图片链接（base64）

						});
					},
					done: function(res) {
						//如果上传失败
						if(res.code > 0) {
							return layer.msg('上传失败');
						}

						//上传成功
					},
					error: function() {
						//演示失败状态，并实现重传
						var demoText = $('#demoText');
						demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
						demoText.find('.demo-reload').on('click', function() {
							uploadInst.upload();
						});
					}
				});
			});
		</script>
	</body>
</html>
