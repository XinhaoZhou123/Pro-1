<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>优惠券处理</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/BackEnd_final/layui/css/layui.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/BackEnd_final/layui/css/modules/layer/default/layer.css">
		<script type="text/javascript" src="<%=request.getContextPath() %>/BackEnd_final/layui/layui.js"></script>
		<script src="<%=request.getContextPath() %>/BackEnd_final/layui/lay/modules/layer.js"></script>
		<script src="<%=request.getContextPath() %>/BackEnd_final/js/mui.min.js"></script>
		<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.0.js"></script>
		
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
		    #couponAdd{text-decoration: none;font-size: 17px; color: #808080;}
			.thead {font-weight: 600; font-size: 18px;}
  			.layui-card-body {margin-top: 2%; padding: 0px 40px 10px 40px;}
		    #a_reservationAdd {text-decoration: none;font-size: 17px; color: #808080;}
		    #selectStyle {display: inline-block; margin-left: 20px; font-size: 16px; font-weight: 500;}
		    td {text-align: center;}
			img {width: 80px; height: 80px;}
			button {border: none; background-color: transparent;}
			body {font-family: "宋体"; background-color: #F8F8FF;}
			.layui-card-body form input{display: inline;width: 10%;margin-right: 2%;}
  		</style>
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
	$(function(){
			$("#btnSelect").click(function(){
				select();
			});
		})
	function select(){
		layui.use('table', function(){
		var table = layui.table;
		  //第一个实例
		var url = '<%=request.getContextPath() %>/BackEnd/coupon/getCoupons';
		var name = $("#conditionSelect input[name='name']").val();
		var c_category = $("#conditionSelect select[name='c_category']").val();
		var c_status = $("#conditionSelect select[name = 'c_status']").val();
		var startdate = $("#conditionSelect startdate[name = 'startdate']").val();
		var enddate = $("#conditionSelect input[name='enddate']").val();
	  	table.render({
		    elem: '#coupon_deal'
		    ,height: 450
		    ,url: url //数据接口
		    ,page: true //开启分页
		    ,method:"post"
		    ,loading:true
		    ,where:{name:name,c_category:c_category,c_status:c_status,startdate:startdate,enddate:enddate}
			,limits:[10,15,20,25,30]
		    ,cols: [[ //表头
		      {field: 'c_id', title: 'ID', width:70, sort: true, align : 'center'}
		      ,{field: 'name', title: '名称', width:100, align : 'center'}
		      ,{field: 'c_category', title: '使用类别', width: 90, sort: true, align : 'center'}
		      ,{field: 'c_status', title: '状态', width:90, sort: true, align : 'center'}
		      ,{field: 'use_condition', title: '使用条件', width:90, align : 'center'} 
		      ,{field: 'decrease', title: '折减', width: 70, align : 'center'}
		      ,{field: 'chan_integral', title: '*积分*', width: 80, sort: true,edit:true, align : 'center'}
		      ,{field: 'totalnum', title: '*总数*', width: 80, sort: true , edit: true, align : 'center'}
		      ,{field: 'remain', title: '剩余', width: 70, align : 'center'}
		      ,{field: 'pubtime', title: '发布日期', width: 110, sort: true, align : 'center'}
		      ,{field: 'startdate', title: '有效日期(始)', width: 120, sort: true, align : 'center'}
		      ,{field: 'enddate', title: '有效日期(终)', width: 120, sort: true, align : 'center'}
		      ,{field : 'check', title: '操作', width:150,toolbar:"#barDemo", align: 'center'}
		    ]]
		    ,done: function(res, curr, count){
					    //如果是异步请求数据方式，res即为你接口返回的信息。
					    //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
					    console.log(res);
					    
					    //得到当前页码
					    console.log(curr); 
					    
					    //得到数据总量
					    console.log(count);
			 }
		  });
		  
		  //监听工具条
			table.on('tool(check_filter)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
			  var data = obj.data; //获得当前行数据
			  var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
			  var tr = obj.tr; //获得当前行 tr 的DOM对象
			  var id = data.c_id;
			  var url;
			  if(layEvent === 'detail'){ //查看
			    //do somehing
			  } else if(layEvent === 'down'){ //下架
			  	if(data.c_status=="不可兑"){
			  		layer.msg("此券早已下架");
			  	}else{
		  		layer.confirm('真的下架行么', function(index){
			      url='<%=request.getContextPath() %>/BackEnd/coupon/downCoupon';
			      $.ajax({
			      	url:url,
			      	method:"post",
			      	data:{c_id:id},
		        	dataType: 'json',
		        	success: function(data){
	        				if(data){
	        					obj.update({
	        						c_status : "不可兑"
	        					})
	        					layer.msg('下架成功');
	        				}
	        			 	else{
	        					layer.msg('下架失败');
	        				}
	        			}
			      	})
			      });
			  	}
			  } else if(layEvent === 'edit'){ //编辑
			    
			     url='<%=request.getContextPath() %>/BackEnd/coupon/updateCoupon';
		     	 //do something
			     $.ajax({
			    	url:url,
			    	method:"post",
			    	data:{c_id:id,totalnum:data.totalnum,chan_integral:data.chan_integral},
			    	success:function(rdata){
			    		if(rdata.msg){
			    			layer.msg("更改成功");
			    		}else{
			    			layer.msg("更改失败,优惠券总量不能小于已兑换的数量");
			    		}
			    		//同步更新缓存对应的值
					    obj.update({
					      totalnum: rdata.totalnum
					      ,chan_integral: rdata.chan_integral
					      ,remain:rdata.remain
					    });
			    	}
			     })
			     
			  }
			});
		  
		});
	}
	window.onload  = select();
			
	
	</script> 
	</head>

	<body class="layui-layout-body" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin" style="margin: 0px 50px 0px 0px;">
			<!-- 内容主体区域 -->
			<div class="layui-card">
				<div class="layui-card-header">
					<span>优惠券处理</span>
					<span style="float: right;">
						<a href="#" id="couponAdd">
							<i class="layui-icon layui-icon-add-1"></i>添加优惠券
						</a>
					</span>
				</div>
				<div class="layui-card-body">
					<form class="scree" id="conditionSelect">
							名称:<input type="text" name="name"  lay-verify="required" placeholder="请输入优惠券名称" 
								autocomplete="off" class="layui-input" style="width: 11%;" > 
							类别:<select name="c_category" lay-verify="" style="margin-right: 2%;">
									  <option value="">全部</option>
									  <option value="JAVA">JAVA</option>
									  <option value="Python">Python</option>
									  <option value="C++">C++</option>
									  <option value="HTML5">HTML5</option>
								</select>
							
							状态:<select name="c_status" lay-verify="" style="margin-right: 2%;">
									  <option value="">全部</option>
									  <option value="可兑换">可兑换</option>
									  <option value="不可兑">不可兑</option>
								</select>
							预约时间:自<input type="date" name="startdate" style="width: 120px;"/>
							-至<input type="date" name="enddate" style="width: 120px"/>
									<button type="button" id="btnSelect" class="layui-btn  layui-btn-sm ">查询</button>
						</form>
					<!--示例表格-->
					<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1" style="height: auto">
						<table id="coupon_deal" lay-filter="check_filter"></table>
						<script type="text/html" id="barDemo">
							<button id="btn_confirm" type="button" class="layui-btn  layui-btn-sm " lay-event="edit">修改</button>
							<button id="btn_del" type="button" class="layui-btn  layui-btn-sm " lay-event="down">下架</button>
						</script>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script>
	var index;
	$("#couponAdd").on("click",function(){
		var obj = document.getElementById('addForm');
	    obj.style.cssText = "width:90%;margin-top:10px; display: block"
		index=layer.open({
			btnAlign: 'c',
			type:1,
			title:'添加优惠券',
			area:'50%' ,
			content:$("#addForm"),
			cancel:function(){
				var obj = document.getElementById("addForm");
			    obj.style.cssText = "display:none;"
			}
		});
	})
	</script>
	<form id="addForm" class="layui-form" style="width:80%;margin-top:10px;display:none">
		<div class="layui-form-item">
		    <label class="layui-form-label">名称</label>
		    <div class="layui-input-block">
		      <input type="text" name="name" required  lay-verify="required" placeholder="请输入优惠券名称" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">使用日期(始)</label>
		    <div class="layui-input-inline" style="width:27%">
		      <input type="date" name="startdate" required lay-verify="required" autocomplete="off" class="layui-input"> 
		    </div>
		    <label class="layui-form-label">使用日期(终)</label>
		    <div class="layui-input-inline" style="width:27%">
		      <input type="date" name="enddate" required lay-verify="required" autocomplete="off" class="layui-input"> 
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">使用类别</label>
		    <div class="layui-input-block" style="width:30%">
		      <select name="c_category" lay-verify="unrequired">
		          <option value="">全部</option>
				  <option value="JAVA">JAVA</option>
				  <option value="Python">Python</option>
				  <option value="C++">C++</option>
				  <option value="HTML5">HTML5</option>
		      </select>
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">折扣(/元)满</label>
		    <div class="layui-input-inline" >
		      <input type="text" name="use_condition" required lay-verify="number" autocomplete="off" class="layui-input"> 
		    </div>
		    <label class="layui-form-label" >降(/元)</label>
		    <div class="layui-input-inline" >
		      <input type="text" name="decrease" required lay-verify="number" autocomplete="off" class="layui-input">	 
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">兑换积分:</label>
		    <div class="layui-input-inline" >
		      <input type="text" name="chan_integral" required lay-verify="number" autocomplete="off" class="layui-input"> 
		    </div>
		    <label class="layui-form-label">发布数量</label>
		    <div class="layui-input-inline" >
		      <input type="text" name="totalnum" required lay-verify="number" autocomplete="off" class="layui-input">	 
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
	</form>
	<script>
	//Demo
	layui.use('form', function(){
	  var form = layui.form;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
	  	
	  	if(data.field.enddate<data.field.startdate){
	  		layer.msg("使用日期不合法");
	  	}else if( data.field.use_condition<data.field.decrease){
	  		layer.msg("满减不合法");
	  	}else{
	  		$.ajax({
	    	url:'<%=request.getContextPath()%>/BackEnd/coupon/insert',
	    	data:data.field,
	    	dataType:"json",
	    	method:"post",
	    	success:function(data){
	    		console.log(data);
	    		if(data){
	    			layer.msg("添加成功");
				    var obj = document.getElementById("addForm");
					obj.style.cssText = "display:none;"
					layer.close(index);
	    		}else{
	    			layui.msg("添加失败");
	    		}
	    	}
	     })
	  	}
	    return false;
	  });
	});
	</script>
</html>
