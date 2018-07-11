<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>课程信息详情页</title>
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
			.layui-textarea {overflow-x: hidden; color: #697882;}
		</style>
		<script type="text/javascript">
            function IFrameResize()
            {
                    //得到父页面的iframe框架的对象
                var obj = parent.document.getElementById("myFrame");
                    //把当前页面内容的高度动态赋给iframe框架的高
                obj.height = this.document.body.scrollHeight;
            } 
        </script>
	</head>

	<body class="layui-layout-body" 
		style="font-family: '宋体'; background-color: #F8F8FF;" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin">
				<!-- 内容主体区域 -->
		  <div style="background-color: white; 
			  	margin: 0px 50px 0px 0px; background-color: #F8F8FF;">
			  <div class="layui-col-md6">
			  	<div class="layui-row">
			  		<div class="layui-collapse">
				  		<div class="layui-col-md12 layui-colla-item">
				  		  
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">课程图片</div>
								<div class="layui-card-body layui-colla-content layui-show" style="padding-left: 3%;">
									<img src="../images/2.jpg" name="course_img" class="layui-upload-img" id="demo1" style="width: 100%;"><br /><br />
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">课程描述</div>
								<div class="layui-card-body layui-colla-content layui-show">
									<img src="../images/yuantiao.jpg" />
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
							<div class="layui-card-header layui-colla-title">课程编号</div>
							<div class="layui-card-body layui-colla-content layui-show" style="height: 50px; line-height: 50px;">
								101
							</div>
						</div>
					</div>
					<div class="layui-col-md12 layui-colla-item">
						<div class="layui-card">
							<div class="layui-card-header layui-colla-title">课程名称</div>
							<div class="layui-card-body layui-colla-content layui-show" style="height: 50px; line-height: 50px;">
								体验课: Java 12天速成
							</div>
						</div>
					</div>
					<div class="layui-col-md12 layui-colla-item">
						<div class="layui-card">
							<div class="layui-card-header layui-colla-title">课程价格</div>
							<div class="layui-card-body layui-colla-content layui-show">
								￥ 0.01
							</div>
						</div>
					</div>
					<div class="layui-col-md12 layui-colla-item">
						<div class="layui-card">
							<div class="layui-card-header layui-colla-title">课程分类</div>
							<div class="layui-card-body layui-colla-content layui-show">
								Java
							</div>
						</div>
					</div>
					<div class="layui-col-md12 layui-colla-item">
						<div class="layui-card">
							<div class="layui-card-header layui-colla-title">开设分部</div>
							<div class="layui-card-body layui-colla-content layui-show">
							  实训中心
							</div>
						</div>
					</div>
				  </div>
			  	</div>
			  </div>

			  <div class="layui-form-item">
				<button class="layui-btn" style="margin: 5% 0 0 45%;">
					<a href="courseModify.jsp" style="color: white;">修改课程信息</a>
				</button>
			 </div>	
		  </div>
		</div>
</body>

</html>