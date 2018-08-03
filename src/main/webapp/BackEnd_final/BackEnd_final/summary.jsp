<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>数据统计页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
		<link rel="stylesheet" href="../assets/css/amazeui.min.css" />
	    <link rel="stylesheet" href="../assets/css/admin.css">
	    <link rel="stylesheet" href="../assets/css/app.css">
	    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.0.js"></script>
	    <script src="../js/echarts.js"></script>
		<style>
			.layui-card {
				margin: 35px 45px 45px 0; 
				
				border-radius: 10px; 
				padding: 20px 10px;
			}

			body {font-family: '宋体'; background-color: #F8F8FF; height: 1050px;}
		</style>
		<script>
			$(function(){
				$.ajax({
					url:'<%=request.getContextPath()%>/BackEnd/index/getSixStatics',
					success:function(data){
						console.log(data);
						$(".number")[0].append(data.userNumbers);
						$(".number")[1].append(data.todayReserv);
						$(".number")[2].append(data.todayOrder);
						$(".number")[3].append(data.todayGood);
						$(".number")[4].append(data.monthProfit);
						$(".number")[5].append(data.monthMessage);
					}
				})
			})
		
		</script>
		<script type="text/javascript">
            function IFrameResize()
            {
                    //得到父页面的iframe框架的对象
                var obj = parent.document.getElementById("myFrame");
                    //把当前页面内容的高度动态赋给iframe框架的高
                obj.height = this.document.body.scrollHeight;
                    
            } 
			function loadStatistics(){
			   	//加载某年条柱形图的数据
			    var orderNum;
			    var FLBN;
			    var paid;
			    var waitPay;
			    var used;
			    var returned;
			    var profit;
			    var returning;
			    var nowYear=<%= new Date().getYear()+1900 %>;
			    var nowMonth = <%= new Date().getMonth()+1 %>;
			    var selectYear = $("#year").val();
			    if(selectYear==null){
			    	selectYear = nowYear;
			    }
			    $.ajax({
			    	url:"<%=request.getContextPath()%>/BackEnd/index/getStatics",
			    	data:{year:selectYear},
			    	async: false,
			    	success:function(data){
			    		orderNum = data.orderNum;
			    		FLBN = data.FLBN;
			    		paid = data.paid;
			    		waitPay = data.waitPay;
			    		used = data.used;
			    		returned = data.returned;
			    		profit = data.profit;
			    		returning = data.returning;
			    		if(selectYear == nowYear){
			    			//修改FLBN、orderNum、Profit的项的数目
			    			orderNum.splice(nowMonth,12-nowMonth);
			    			FLBN.splice(nowMonth,12-nowMonth); 
			    			profit.splice(nowMonth,12-nowMonth);
			    		}
			    	}
			    })
			    var myChart = echarts.init(document.getElementById('main')); 
			        
			 	var option = {
			 		title:{
			 			show:true,
			 			text:selectYear+"年销售记录",
			 		},
			    tooltip : {
			        trigger: 'axis'
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: true},
			            magicType: {show: true, type: ['line', 'bar']},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    calculable : true,
			    legend: {
			        data:['预约量','订单量',"流水金额"]
			    },
			    xAxis : [
			        {
			            type : 'category',
			            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value',
			            name : '订单/预约量',
			            axisLabel : {
			                formatter: '{value} '
			            }
			        },
			        {
			            type : 'value',
			            name : '流水金额',
			            axisLabel : {
			                formatter: '{value} $'
			            }
			        }
			    ],
			    series : [
			
			        {
			            name:'订单量',
			            type:'bar',
			            data:orderNum,
			            itemStyle:{
			         	   normal:{color:"#FF3399"}	
			            }
			        },
			        {
			            name:'预约量',
			            type:'bar',
			            data:FLBN,
			            itemStyle:{
			         	   normal:{color:"#66FFFF"}	
			            }
			        },
			       {
			            name:'流水金额',
			            type:'line',
			            yAxisIndex: 1,
			            data:profit,
			            itemStyle:{
			         	   normal:{color:"#686868"}	
			            }
			        }
			    ]
			};
			  // 为echarts对象加载数据 
			  myChart.clear();
		      myChart.setOption(option); 
		     
			var myOrder = echarts.init(document.getElementById('order')); 
			var option2 = {
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient : 'vertical',
			        x : 'left',
			        data:['待付款','已付款','退款中','已退款','已使用']
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            magicType : {
			                show: true, 
			                type: ['pie', 'funnel'],
			                option: {
			                    funnel: {
			                        x: '25%',
			                        width: '50%',
			                        funnelAlign: 'center',
			                        max: 1548
			                    }
			                }
			            },
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    calculable : true,
			    series : [
			        {
			            name:'订单状态',
			            type:'pie',
			            radius : ['50%', '70%'],
			            itemStyle : {
			                normal : {
			                    label : {
			                        show : true
			                    },
			                    labelLine : {
			                        show : true
			                    }
			                },
			                emphasis : {
			                    label : {
			                        show : true,
			                        position : 'center',
			                        textStyle : {
			                            fontSize : '15',
			                            fontWeight : 'bold'
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:waitPay, name:'待付款'},
			                {value:paid, name:'已付款'},
			                {value:returning, name:'退款中'},
			                {value:returned, name:'已退款'},
			                {value:used, name:'已使用'}
			            ]
			        }
			    ]
			};
		   // 为echarts对象加载数据 
		   myOrder.clear(option);
		   myOrder.setOption(option2);   
		}       
		</script>	
	</head>

	<body class="layui-layout-body" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin" style="margin: 0px 50px 0px 0px;">
			<div class="layui-col-md12">
				<div class="layui-col-md12">
					<div class="layui-card">

						<div class="layui-card" style="width: 100%;">
				            <div class="row">
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat green">
				                        <div class="visual">
				                            <i class="am-icon-user"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number"> </div>
				                            <div class="desc"> 用户总数 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat red">
				                        <div class="visual">
				                            <i class="am-icon-shopping-basket"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number">  </div>
				                            <div class="desc"> 今日预约数 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat blue">
				                        <div class="visual">
				                            <i class="am-icon-shopping-bag"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number">  </div>
				                            <div class="desc"> 今日订单数 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat red">
				                        <div class="visual">
				                            <i class="am-icon-wechat"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number">  </div>
				                            <div class="desc"> 今日获赞数 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				                
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat blue">
				                        <div class="visual">
				                            <i class="am-icon-money"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number">  </div>
				                            <div class="desc"> 本月流水 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				                <div class="am-u-lg-4 am-u-md-6 am-u-sm-12">
				                    <div class="dashboard-stat green">
				                        <div class="visual">
				                            <i class="am-icon-pencil"></i>
				                        </div>
				                        <div class="details">
				                            <div class="number"> </div>
				                            <div class="desc"> 本月朋友圈条数 </div>
				                        </div>
				                        <div class="more" href="#"> &nbsp;</div>
				                    </div>
				                </div>
				            </div>
						</div>
						<div class="row" style="margin-left: 2%;margin-right: 2%;height: 400px;">
							<div style="height:inherit;width:50%;float:left">
								<span style="margin-left:30%">选择年份:</span>
								<select id="year" name="year" style="width:80;margin-bottom:5px">
									<option value="<%= new Date().getYear()+1900 %>"><%= new Date().getYear()+1900 %></option>
									<option value="<%= new Date().getYear() +1900-1%>"><%= new Date().getYear() +1900-1%></option>
									<option value="<%= new Date().getYear() +1900-2%>"><%= new Date().getYear() +1900-2%></option>
									<option value="<%= new Date().getYear() +1900-3%>"><%= new Date().getYear() +1900-3%></option>
									<option value="<%= new Date().getYear() +1900-4%>"><%= new Date().getYear() +1900-4%></option>
								</select>
								<div id="main" style="height:90%;"></div>
							</div>
							<div id="order" style="height:inherit;width:45%;float:right"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script>
		loadStatistics();
		$("#year").change(function(){
			loadStatistics();
		})
	</script>
	</body>
</html>

