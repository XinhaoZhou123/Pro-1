<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+path+"/";  
request.setAttribute("path", basePath);  
%> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>预约处理页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/BackEnd_final/layui/css/layui.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/BackEnd_final/css/page_diverge.css">
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.0.js"></script>
		<style>
			.layui-card {margin: 35px 45px 45px 0; border-radius: 10px; text-align: center;}
			.layui-card-header {
				font-size: 25px; 
				font-weight: 600;
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
				text-align: left;
			}
			.layui-icon {font-size: 21px;}
			.thead {font-weight: 600; font-size: 18px;}
  			.layui-card-body {margin-top: 2%; padding: 0px 40px 10px 40px;}
		    #a_reservationAdd {text-decoration: none;font-size: 17px; color: #808080;}
		    #selectStyle {display: inline-block; margin-left: 20px; font-size: 16px; font-weight: 500;}
		    td {text-align: center;}
			img {width: 80px; height: 80px;}
			button {border: none; background-color: transparent;}
			body {font-family: "宋体"; background-color: #F8F8FF;}
			.layui-card-body form input{display: inline;width: 10%;margin-right: 2%;}
			.laytable-cell-1-number{ width: 113px; text-align: center;}
			.laytable-cell-1-title{ width: 150px; text-align: center;}
			.laytable-cell-1-username{ width: 90px; text-align: center;}
			.laytable-cell-1-tel{ width: 130px; text-align: center;}
			.laytable-cell-1-status{ width: 100px; text-align: center;}
			.laytable-cell-1-date{ width: 170px; text-align: center;}
			.laytable-cell-1-note{ width: 170px; text-align: center;}
			.laytable-cell-1-deal{ width: 105px; text-align: center;}
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
        <script type="text/javascript">
        	$(function(){
				$("#btn_search").click(function(){
					loadTable();
				});		
			})
			
			function getUrl(){
				var oid = $("#oid").val();
				var status = $("#status").val();
				var startDate = $("#startDate").val();
				var endDate = $("#endDate").val();
				var url = '<%=request.getContextPath() %>/order/getOrdersPageAjax?oid=' + oid 
							+ '&status=' + status + '&startDate=' + startDate + '&endDate=' + endDate;
				return url;
			}
			
        	function loadTable(){
    			layui.use('table', function(){
    				var table = layui.table;
    				var url = getUrl();
    				
    				//第一个实例
    				table.render({
    					elem : '#reservation_table',
    					height : 415,
    					url : url, //数据接口
    					page : true,
    					cols : [ [ //表头
	    					{field : 'lid', title : '预约编号', width : 100, sort : true, fixed : 'left', align : 'center'}, 
	    					{field : 'fid', title : '课程编号', width : 100, sort : true, align : 'center' }, 
	    					{field : 'title', title : '课程标题', width : 100, sort : true, align : 'center' }, 
	    					{field : 'userName', title : '用户昵称', width : 100, align : 'center'}, 
	    					{field : 'tel', title : '用户电话', width : 110, align : 'center' }, 
	    					{field : 'status', title : '订单金额', width : 100, sort : true, align : 'center'}, 
	    					{field : 'bookTime', title : '代金券编号', width : 110, align : 'center'}, 
	    					{field : 'comment', title : '实付金额', width : 110, align : 'center' }, 
	    					{field : 'deal', title : '处理', width : 100, align : 'center'}, 
    					] ]
    				});
    			})	
    		}
        	
        	window.onload = loadTable();
        </script>
</head>

	<body class="layui-layout-body" >
		<div class="layui-layout layui-layout-admin" style="margin: 0px 50px 0px 0px;">
			<!-- 内容主体区域 -->
			<div class="layui-card">
				<div class="layui-card-header">
					<span>订单查询</span>
				</div>
				<div class="layui-card-body">
					<form id="search_form" class="scree" action="<%=request.getContextPath() %>/reserve/findPageByCondition" method="post">
							关键字:<input type="text" name="fid"  lay-verify="required" placeholder="请输入课程编号" 
								autocomplete="off" class="layui-input" style="width: 11%;"> 
							用户昵称:<input type="text" name="nickName"  lay-verify="required" placeholder="请输入用户昵称" 
								autocomplete="off" class="layui-input" style="width: 11.5%;"> 
							预约状态:<select name="status" lay-verify="" style="margin-right: 2%;">
									  <option value="">任意状态</option>
									  <option value="待处理">待处理</option>
									  <option value="已处理">已处理</option>
								</select>
							预约时间:自<input type="date" name="startDate" style="width: 120px;"/>
							-至<input type="date" name="endDate" style="width: 120px"/>
									<input type="submit" class="layui-btn  layui-btn-sm layui-btn-normal" 
										style="width:auto; background-color:#009E94;" value="查询";>
						</form>
					<!--示例表格-->
					<div class="layui-form layui-border-box layui-table-view" style="height: 450px; " >
						<table id="reservation_table"></table>
						<script type="text/html" id="barDemo">
								<button id="btn_confirm" type="button" class="layui-btn  layui-btn-sm layui-btn-normal" lay-event="confirm">核销</button>
						</script>
					</div>
			  </div>
		  </div>
		</div>
	</body>
</html>