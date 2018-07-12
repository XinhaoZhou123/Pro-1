<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>退款处理页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
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
			.thead {font-weight: 600; font-size: 18px;}
  			.layui-card-body {margin-top: 2%; padding: 0px 40px 10px 40px;}
		    td {text-align: center;}
			button {border: none; background-color: transparent;}
			body {font-family: "宋体"; background-color: #F8F8FF;}
			.layui-card-body form input{display: inline;width: 10%;margin-right: 2%;}
			.laytable-cell-1-id{ width: 99px; text-align: center;}
			.laytable-cell-1-number{ width: 88px; text-align: center;}
			.laytable-cell-1-username{ width: 88px; text-align: center;}
			.laytable-cell-1-tel{ width: 110px; text-align: center;}
			.laytable-cell-1-price{ width: 100px; text-align: center;}
			.laytable-cell-1-coupon_id{ width: 113px; text-align: center;}
			.laytable-cell-1-pay{ width: 88px; text-align: center;}
			.laytable-cell-1-status{ width: 88px; text-align: center;}
			.laytable-cell-1-date{ width: 182px; text-align: center;}
			.laytable-cell-1-refund{ width: 72px; text-align: center;}
			#btn_search {float: right; width:auto; background-color:#009E94;}
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
			<!-- 内容主体区域 -->
			<div class="layui-card">
				<div class="layui-card-header">
					<span>退款处理</span>
				</div>
				<div class="layui-card-body">
					<form class= "scree" style="margin-bottom: 20px;">
						关键字:<input type="text" name="title" required lay-verify="required" 
							placeholder="请输入订单编号" autocomplete="off" class="layui-input" style="width: 18%; margin-right: 4%;"> 
						订单状态:
						<select name="city" lay-verify="" style="margin-right: 4%;">
							<option value="">任意状态</option>
							<option value="010">待付款</option>
							<option value="010">已付款</option>
							<option value="021">退款中</option>
							<option value="0571">已退款</option>
						</select>
						下单时间:自<input type="date" name="start_date" style="width: 130px;margin-right: 4%;" /> -至
						<input type="date" name="end_date" style="width: 130px;" />
						<input id="btn_search" type="submit" class="layui-btn  layui-btn-sm layui-btn-normal" value="查询">
					</form>
					<!--示例表格-->
					<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1" style="height: 400px; " >
					  <div class="layui-table-box">
						<div class="layui-table-body">
							<table cellspacing="0" cellpadding="0" border="0" class="layui-table">
								<thead>
									<tr>
										<th data-field="id">
											<div class="layui-table-cell laytable-cell-1-id">
												<span>课程编号</span>
												<span class="layui-table-sort layui-inline">
													<i class="layui-edge layui-table-sort-asc"></i>
													<i class="layui-edge layui-table-sort-desc"></i>
												</span>
											</div>
										</th>
										<th data-field="num">
											<div class="layui-table-cell laytable-cell-1-number">
												<span>订单编号</span>
											</div>
										</th>
										<th data-field="username">
											<div class="layui-table-cell laytable-cell-1-username">
												<span>用户昵称</span>
											</div>
										</th>
										<th data-field="tel" data-minwidth="150">
											<div class="layui-table-cell laytable-cell-1-tel">
												<span>用户电话</span>
											</div>
										</th>
										<th data-field="price">
											<div class="layui-table-cell laytable-cell-1-price">
												<span>订单金额</span>
												<span class="layui-table-sort layui-inline">
													<i class="layui-edge layui-table-sort-asc"></i>
													<i class="layui-edge layui-table-sort-desc"></i>
												</span>
											</div>
										</th>
										<th data-field="coupon_id">
											<div class="layui-table-cell laytable-cell-1-coupon_id">
												<span>代金券编号</span>
												<span class="layui-table-sort layui-inline">
													<i class="layui-edge layui-table-sort-asc"></i>
													<i class="layui-edge layui-table-sort-desc"></i>
												</span>
											</div>
										</th>
										<th data-field="pay">
											<div class="layui-table-cell laytable-cell-1-pay">
												<span>实付金额</span>
											</div>
										</th>
										<th data-field="status">
											<div class="layui-table-cell laytable-cell-1-status">
												<span>订单状态</span>
											</div>
										</th>
										<th>
											<div class="layui-table-cell laytable-cell-1-date">
												<span>下单时间</span>
											</div>
										</th>
										<th>
											<div class="layui-table-cell laytable-cell-1-refund">
												<span>退款</span>
											</div>
										</th>
									</tr>
								</thead>
							</table>
						<!--</div>
							<div class="layui-table-body layui-table-main">-->
								<table cellspacing="0" cellpadding="0" border="0" class="layui-table">
									<tbody>
										<tr data-index="0">
											<td data-field="id">
												<div class="layui-table-cell laytable-cell-1-id">6</div>
											</td>
											<td data-field="num">
												<div class="layui-table-cell laytable-cell-1-number">71</div>
											</td>
											<td data-field="username">
												<div class="layui-table-cell laytable-cell-1-username">费园园</div>
											</td>
											<td data-field="tel" data-minwidth="150">
												<div class="layui-table-cell laytable-cell-1-tel">15840147986</div>
											</td>
											<td data-field="price">
												<div class="layui-table-cell laytable-cell-1-price">0.01</div>
											</td>
											<td data-field="coupon_id">
												<div class="layui-table-cell laytable-cell-1-coupon_id"></div>
											</td>
											<td data-field="pay">
												<div class="layui-table-cell laytable-cell-1-pay">0.01</div>
											</td>
											<td data-field="status">
												<div class="layui-table-cell laytable-cell-1-status">已退款</div>
											</td>
											<td>
												<div class="layui-table-cell laytable-cell-1-date">
													<span>2018-06-15 02:31:53</span>
												</div>
											</td>
											<td>
												<div class="layui-table-cell laytable-cell-1-refund">
													<input type="submit" class="layui-btn  layui-btn-sm layui-btn-normal" 
													style="width:auto; background-color:#009E94;" value="退款">
												</div>
											</td>
										</tr>
										<tr data-index="0">
											<td data-field="id">
												<div class="layui-table-cell laytable-cell-1-id">7</div>
											</td>
											<td data-field="num">
												<div class="layui-table-cell laytable-cell-1-number">72</div>
											</td>
											<td data-field="username">
												<div class="layui-table-cell laytable-cell-1-username">费园园</div>
											</td>
											<td data-field="tel" data-minwidth="150">
												<div class="layui-table-cell laytable-cell-1-tel">13955842698</div>
											</td>
											<td data-field="price">
												<div class="layui-table-cell laytable-cell-1-price">0.01</div>
											</td>
											<td data-field="coupon_id">
												<div class="layui-table-cell laytable-cell-1-coupon_id"></div>
											</td>
											<td data-field="pay">
												<div class="layui-table-cell laytable-cell-1-pay">0.01</div>
											</td>
											<td data-field="status">
												<div class="layui-table-cell laytable-cell-1-status">已退款</div>
											</td>
											<td>
												<div class="layui-table-cell laytable-cell-1-date">
													<span>2018-06-15 02:31:53</span>
												</div>
											</td>
											<td>
												<div class="layui-table-cell laytable-cell-1-refund">
													<input type="submit" class="layui-btn  layui-btn-sm layui-btn-normal" 
													style="width:auto; background-color:#009E94;" value="退款">
												</div>
											</td>
										</tr>
										<tr data-index="0">
											<td colspan="10">
											</td>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-table-page">
					<div class="layui-box layui-laypage layui-laypage-default">
						<span id="pageDiverge"></span>
						<span class="layui-laypage-skip">
						到第<input type="text" min="1" value="1" class="layui-input">页
						<button type="button" class="layui-laypage-btn">确定</button>
						</span>
						<span class="layui-laypage-count">共 1000 条</span>
					</div>
				</div>
			</div>
		  </div>
	</body>
	<script type="text/javascript" src="../layui/layui.js"></script>
		<script>
		//JavaScript代码区域
		layui.use('element', function(){
		  var element = layui.element;
		  
		});
		layui.use('layer ', function(){
			var layer = layui.layer ;
		});
		layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		});
	</script>
	<script>
	//一般直接写在一个js文件中
	layui.use(['layer', 'form'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	
	});
	</script> 
	<script>
		layui.use('laypage', function(){
		  var laypage = layui.laypage;
		  
		  //执行一个laypage实例
		  laypage.render({
		    elem: 'pageDiverge' //注意，这里的 test1 是 ID，不用加 # 号
		    ,count: 50 //数据总数，从服务端得到
		    ,curr: location.hash.replace('#!fenye=', '') //获取起始页
		  	,hash: 'fenye' //自定义hash值 
		  });
		});
	</script>
</html>