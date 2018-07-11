<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>师资力量</title>
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
			.layui-icon {font-size: 25px;}
			.thead {font-weight: 600; font-size: 18px;}
  			
		  	#te {
		        margin-left: 30px;
		        resize: none;
		        background-color: white;
		        border: none;
		        margin-top: 5px;
		    }
		    #a_teacherAdd {text-decoration: none;font-size: 17px; color: #808080;}
		    td {text-align: center;}
			img {width: 90px; height: 90px;}
			button {border: none; background-color: transparent;}
			body {font-family: "宋体"; background-color: #F8F8FF;}
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
					<span>讲师信息表</span>
					<span style="float: right;">
						<a href="teacherAdd.jsp" id="a_teacherAdd">
							<i class="layui-icon layui-icon-add-1"></i>添加教师
						</a>
					</span>
				</div>
				<div class="layui-card-body" style="margin-top: 2%;">
					<table style="border-collapse: separate; width: 100%; border-spacing: 10px 20px;">
						<thead>
							<tr>
								<th width="17%">讲师姓名</th>
								<th width="15%">讲师图片</th>
								<th width="53%">讲师简介</th>
								<th width="">操作</th>
							</tr>
						</thead>
						<tbody style="font-size: 13px;">
							<tr>
								<td>弗园园</td>
								<td><img src="../images/teacher4.jpg" id="img" /></td>
								<td>
									<textarea id="te" rows="5" cols="60" readonly>主要从事HTML5、Java开源领域及Android移动开发，在东软集团担任过6年的软件工程师，2年半的HTML5、JAVA培训讲师，承担过东北大学，北交大等重点高校培训项目。
								    </textarea>
								</td>
								<td>
									<button><a href="teacherModify.jsp"><i class="layui-icon layui-icon-edit" ></i>&emsp;</a></button>
									<button><a href="#"><i class="layui-icon layui-icon-delete"></i></a></button>
								</td>
							</tr>
							<tr>
								<td>弗园园</td>
								<td><img src="../images/teacher4.jpg" id="img" /></td>
								<td>
									<textarea id="te" rows="5" cols="60" readonly>主要从事HTML5、Java开源领域及Android移动开发，在东软集团担任过6年的软件工程师，2年半的HTML5、JAVA培训讲师，承担过东北大学，北交大等重点高校培训项目。
									</textarea>
								</td>
								<td>
									<button><a href="teacherModify.jsp"><i class="layui-icon layui-icon-edit" ></i>&emsp;</a></button>
									<button><a href="#"><i class="layui-icon layui-icon-delete"></i></a></button>
								</td>
							</tr>
							<tr>
								<td>弗园园</td>
								<td><img src="../images/teacher4.jpg" id="img" /></td>
								<td>
									<textarea id="te" rows="5" cols="60" readonly>主要从事HTML5、Java开源领域及Android移动开发，在东软集团担任过6年的软件工程师，2年半的HTML5、JAVA培训讲师，承担过东北大学，北交大等重点高校培训项目。
									</textarea>
								</td>
								<td>
									<button><a href="teacherModify.jsp"><i class="layui-icon layui-icon-edit" ></i>&emsp;</a></button>
									<button><a href="#"><i class="layui-icon layui-icon-delete"></i></a></button>
								</td>
							</tr>
						</tbody>
					</table>
					<div id="test1" style="margin-top: 40px; margin-left: 8%;"></div>
				</div>
			</div>	
		</div>
	</body>
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
</html>
