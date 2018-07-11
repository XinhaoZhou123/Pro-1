<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>分部查看页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
		<style>
			.layui-card {margin: 35px 45px 45px 0; border-radius: 10px; text-align: center;}
			.layui-card-header {
				font-size: 25px; 
				font-weight: 700;
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
				text-align: left;
			}
			.layui-icon {font-size: 25px;}
			.thead {font-weight: 600; font-size: 16px;}
			.table-cell-id, .table-cell-name, .table-cell-address, .table-cell-tel, .table-cell-opt{text-align: center;}
			#a_branchAdd {text-decoration: none;font-size: 17px;}
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
				<div class="layui-card">
				  <div class="layui-card-header">
				  	<span>分部信息表</span>
				  	<span style="float: right;">
				  		<a href="branchAdd.jsp" id="a_branchAdd">
				  			<i class="layui-icon layui-icon-add-1"></i>
				  			添加分部
				  		</a>
				  	</span>
				  </div>
				  <div class="layui-card-body" style="margin-top: 1%;">
					<table class="layui-table" lay-skin="nob" lay-even>
						<thead align="center">
							<tr>
								<th><div class="thead table-cell-id">分部编号</div></th>
								<th><div class="thead table-cell-name">分部名字</div></th>
								<th><div class="thead table-cell-address">分部地址</div></th>
								<th><div class="thead table-cell-tel">分部电话</div></th>
								<th><div class="thead table-cell-opt">选项</div></th>
							</tr>
						</thead>
						<tbody style="font-size: 15px;">
							<tr style="background-color:">
								<td><div class="tbody table-cell-id">1</div></td>
								<td><div class="tbody table-cell-name">实训中心</div></td>
								<td><div class="tbody table-cell-address">东软实训中心</div></td>
								<td><div class="tbody table-cell-tel">15940471397</div></td>
								<td>
									<div class="tbody table-cell-opt">
										<a href="branchView.jsp"><i class="layui-icon layui-icon-location">&emsp;</i></a>
										<a href="branchModify.jsp"><i class="layui-icon layui-icon-edit">&emsp;</i></a>
										<a href="#"><i class="layui-icon layui-icon-delete">&emsp;</i></a>
									</div>
								</td>
							</tr>
							<tr style="background-color:#F1F4F5">
								<td><div class="tbody table-cell-id">2</div></td>
								<td><div class="tbody table-cell-name">艺术中心</div></td>
								<td><div class="tbody table-cell-address">多才艺术中心</div></td>
								<td><div class="tbody table-cell-tel">15940471397</div></td>
								<td>
									<div class="tbody table-cell-opt">
										<a href="branchView.jsp"><i class="layui-icon layui-icon-location">&emsp;</i></a>
										<a href="branchModify.jsp"><i class="layui-icon layui-icon-edit">&emsp;</i></a>
										<a href="#"><i class="layui-icon layui-icon-delete">&emsp;</i></a>
									</div>
								</td>
							</tr>
							<tr style="background-color:">
								<td><div class="tbody table-cell-id">3</div></td>
								<td><div class="tbody table-cell-name">恒大名都</div></td>
								<td><div class="tbody table-cell-address">恒大名都</div></td>
								<td><div class="tbody table-cell-tel">15940471397</div></td>
								<td>
									<div class="tbody table-cell-opt">
										<a href="branchView.jsp"><i class="layui-icon layui-icon-location">&emsp;</i></a>
										<a href="branchModify.jsp"><i class="layui-icon layui-icon-edit">&emsp;</i></a>
										<a href="#"><i class="layui-icon layui-icon-delete">&emsp;</i></a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				  </div>
				</div>
			</div>
		</div>
	</body>

</html>