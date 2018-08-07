<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>企业信息页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/BackEnd_final/layui/css/layui.css">
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=7G4mrGoAKdfGRAGUNx8Wb1WhoVr0XkiV"></script>
		<style>
			.layui-card {margin: 35px 45px 45px 0; text-align: center; border-radius: 10px;}
			.layui-card-header {
				font-size: large; 
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
			}
			#l-map {width: 100%;height: 400px;margin:0;font-family:"微软雅黑"}
			
		</style>
		<script type="text/javascript">
            function IFrameResize()
            {
                    //得到父页面的iframe框架的对象
                var obj = parent.document.getElementById("myFrame");
                    //把当前页面内容的高度动态赋给iframe框架的高
                var height = getComputedStyle(window.parent.document.getElementsByClassName("layui-body")[0],null).height;
                console.log(height); 
                obj.height = height;
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
								<div class="layui-card-header layui-colla-title">分部地址</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="padding-left: 3%;">
									
						         		
									      		<input type="text" id="suggestId" size="20" class="layui-input" value="${address.address }"/></div>
									      	<div id="l-map"></div>
	
						         
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
								<div class="layui-card-header layui-colla-title">分部名称</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="height: 50px; line-height: 50px;">
									<input id="branch_branch" class="layui-input" type="text" value="${address.branch }"/>
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">分部电话</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="text-align: left;">
									<input class="layui-input" id="branch_tel" type="text" value="${address.tel }"/>
									
								</div>
							</div>
						</div>
				  	</div>
				  	<div class="layui-form-item">
						<button class="layui-btn" style="margin: 25% 0 0 36%;" id="saveBranchInfo">
							保存分部信息
						</button>
					</div>	
				  </div>
				</div>
			  </div>
		</div>
		 
		<script type="text/javascript" src="<%=request.getContextPath() %>/BackEnd_final/layui/layui.js"></script>
		<script>
		//JavaScript代码区域
		layui.use('layer ', function(){
			var layer = layui.layer ;
		});
		layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		});
		</script>
	</body>
	<script type="text/javascript">
			// 百度地图API功能
			function G(id) {
				return document.getElementById(id);
			}
		
			var map = new BMap.Map("l-map");
		//	map.centerAndZoom("北京",12);                   // 初始化地图,设置城市和地图级别。
		
			var new_point = new BMap.Point(<%= request.getAttribute("longitude")%>,<%= request.getAttribute("latitude")%>);
			map.centerAndZoom(new_point, 18);
			
			map.addControl(new BMap.MapTypeControl({
				mapTypes:[
		            BMAP_NORMAL_MAP,
		            BMAP_HYBRID_MAP
		        ]}));	  
			map.setCurrentCity("沈阳");          // 设置地图显示的城市 此项是必须设置的
			map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
			var marker = new BMap.Marker(new_point);  // 创建标注
			map.addOverlay(marker);              // 将标注添加到地图中
			map.panTo(new_point); 
			
			var geoc = new BMap.Geocoder();
			map.addEventListener("click",function(e){
				alert(e.point.lng+","+e.point.lat);
				longitude = e.point.lng;
				latitude = e.point.lat;
				var pt = e.point;
				geoc.getLocation(pt,function(rs){
					var addComp = rs.addressComponents;
					document.getElementById("suggestId").setAttribute("value",addComp.province+""+addComp.city+""+addComp.district+""+addComp.street+""+addComp.streetNumber);
				});
			});
		</script>	
		<script>
		console.log(document.getElementById("suggestId"));		
	//	document.getElementById("suggestId").setAttribute('value','666');
		</script>	
	<script src="<%=request.getContextPath() %>/BackEnd_final/jquery-3.2.0.min.js"></script>
	<script>
		$("#saveBranchInfo").click(function(){
			
			var branch = $("#branch_branch").val();
			var address = $("#suggestId").val();
			var tel = $("#branch_tel").val();
			//console.log(newlongitude);
			
			$.ajax({
				url:"Handler_updateBranchInfoByQidId",
				type:"post",
				data:{
					aid: <%= request.getAttribute("id")%>,
					branch:branch,
					address:address,
					tel:tel,
					longitude:longitude,
					latitude: latitude
				},
				dataType:"json",
				success:function(data){
					alert(data.result);
				}
				
			});
		})
	</script>
</html>
