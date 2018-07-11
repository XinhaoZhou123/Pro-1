<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>企业信息页</title>
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
								<div class="layui-card-header layui-colla-title">企业名称</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="height: 50px; line-height: 50px;">
									东软睿道
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业简介</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="text-align: left;">
									沈阳东软睿道教育服务有限公司（简称东软睿道）由东软创办，基于东软的产业发展
									与人才培养实践， 提供更加符合IT行业发展需求的人才培养体系和方法学，精准提升
									大学生和大学后的就业、创业技能， 为新经济时代的转型发展提供高质量规模化的人才供给。
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
				        	<div class="layui-card">
								<div class="layui-card-header layui-colla-title">精彩展示</div>
								<div class="layui-card-body layui-colla-content layui-show">
									<img src="../images/yuantiao.jpg" style="width:500px;height:346px;"><br />
									<img src="../images/yuantiao.jpg" style="width:500px;height:346px;">
									<img src="../images/yuantiao.jpg" style="width:500px;height:346px;">
									<img src="../images/yuantiao.jpg" style="width:500px;height:346px;">
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
								<div class="layui-card-header layui-colla-title">企业图片</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="padding-left: 3%;">
									<div class="layui-carousel carousel" id="img-carousel">
									  <div carousel-item="">
									    <div><img src="../images/yuantiao.jpg"></div>
									    <div><img src="../images/6.jpg"></div>
									    <div><img src="../images/muwu.jpg"></div>
									  </div>
									</div> 		
								</div>
							</div>
				      	</div>
				      	
					  	<div class="layui-col-md12 layui-colla-item">
				        	<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业视频</div>
								<div class="layui-card-body layui-colla-content layui-show">
									<video id="enterprise_video" src="" style="width:500px; height:250px;" 
										controls="controls">
									</video>
								</div>
							</div>
				      	</div>
			      	</div>
				  </div>
				</div>

				<div class="layui-form-item">
					<button class="layui-btn" style="margin: 5% 0 0 45%;">
						<a href="enterpriseModify.jsp" style="color: white;">修改企业信息</a>
					</button>
				</div>				
			  </div>

		</div>
		
		<script type="text/javascript" src="../layui/layui.js"></script>
		<script>
		layui.use('carousel', function(){
		  var carousel = layui.carousel;
		  //建造实例
		  carousel.render({
		    elem: '#img-carousel'
		    ,width: '500px' //设置容器宽度
		    ,height: '346px'
		    ,arrow: 'hover' //始终显示箭头
		    ,anim: 'fade' //切换动画方式
		  });
		});
		</script>
		
		<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
		<script>
		layui.use(['element', 'layer'], function(){
		  var element = layui.element;
		  var layer = layui.layer;
		  
		  //监听折叠
		  element.on('collapse(test)', function(data){
		    layer.msg('展开状态：'+ data.show);
		  });
		});
		</script>
		
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
			layui.use('layer ', function() {
				var layer = layui.layer;
			});
		</script>
		<script>
			layui.use('form',function(){
				var $ = layui.jquery;
				
				//企业图片介绍
			$("#demo1").attr("src","../images/6.jpg");
			$("#demo2").attr("src","../images/yuantiao.jpg");
		////企业风采中图片
			$("#enterprise_info_img").attr("src","../images/teacher4.jpg");
		////企业视频
			$("#enterprise_video").attr("src","../videos/1.mp4");
			})
		</script>
</body>

</html>
