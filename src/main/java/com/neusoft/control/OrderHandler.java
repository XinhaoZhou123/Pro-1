package com.neusoft.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.*;

import com.neusoft.po.Sorder;
import com.neusoft.service.OrderService;

@Controller
public class OrderHandler {
		@Autowired
		private OrderService orderService;
		
		@RequestMapping(value="/order/getOrders")
		@ResponseBody
		public List<Sorder> getOrders(HttpServletRequest request) throws Exception{
			List<Sorder> orders = new ArrayList<Sorder>();
			int qid = Integer.parseInt(request.getParameter("qid"));
			String tel = request.getParameter("tel");
			String status = null;
			
			if (request.getParameter("status") != null && request.getParameter("status") != "")
				// 解析英文状态，因为问号传值会中文乱码，故状态值为英文
				switch (request.getParameter("status")) {
				case "unpaid":
					status = "待付款";
					break;
				case "paid":
					status = "已付款";
					break;
				case "used":
					status = "已使用";
					break;
				case "refund":
					status = "取消和退款";
					break;
				}

			orders = orderService.selectAllOrders(qid, tel, status);
			return orders;
		}
		
		@RequestMapping(value="/order/getOrdersPageAjax")
		@ResponseBody
		public Map<String, Object> getOrdersPageAjax(HttpServletRequest request) throws Exception{
			System.out.println("........OrderHandler.........getOrdersCount().....");
			
			// 存储查询条件的map集合
			Map<String,Object> map = new HashMap<String,Object>();
			if (request.getParameter("qid") != null && request.getParameter("qid") != "")
				map.put("qid", request.getParameter("qid"));
			else
				map.put("qid", null);
			
			// 向map中存入从页面传来的条件值
			if (request.getParameter("oid") != null && request.getParameter("oid") != "")
				map.put("oid", request.getParameter("oid"));
			else
				map.put("oid", null);
	
			if (request.getParameter("status") != null && request.getParameter("status") != "")
				// 解析英文状态，因为问号传值会中文乱码，故状态值为英文
				switch (request.getParameter("status")) {
				case "unpaid":
					map.put("status", "待付款");
					break;
				case "paid":
					map.put("status", "已付款");
					break;
				case "refunding":
					map.put("status", "退款中");
					break;
				case "refunded":
					map.put("status", "已退款");
					break;
				case "used":
					map.put("status", "已使用");
					break;
				case "canceled":
					map.put("status", "已取消");
					break;
				}
			else
				map.put("status", null);
	
			if (request.getParameter("startDate") != null && request.getParameter("startDate") != "")
				map.put("startDate", request.getParameter("startDate"));
			else
				map.put("startDate", null);
	
			if (request.getParameter("endDate") != null && request.getParameter("endDate") != "")
				map.put("endDate", request.getParameter("endDate"));
			else
				map.put("endDate", null);
			// 若起始时间为空，则查询条件为从有记录的第一笔订单时间开始，故设置截止日期为一个很早的日期
			if (map.get("startDate") == null || map.get("startDate") == "")
				map.put("startDate", "1977-01-01");
			// 若截止时间为空，则查询条件为截止目前，故设置截止日期为一个很远的日期
			if (map.get("endDate") == null || map.get("endDate") == "")
				map.put("endDate", "2222-01-01");
			
			//定义当前页和每页记录数量
			int currentPage = 1;
			int limit = 10;
			
			if(request.getParameter("page")!=null)
				currentPage = Integer.parseInt(request.getParameter("page"));
			map.put("currentPage", currentPage);
			if(request.getParameter("limit")!=null)
				limit = Integer.parseInt(request.getParameter("limit"));
			map.put("limit", limit);
			int count = orderService.selectOrdersCount(map);
			map.put("count", count);
			
			List<Sorder> orders = orderService.selectAllOrdersPage(map);
			
			// 页面layui table所需的数据集合
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("code", 0);
			result.put("msg", "");
			result.put("count", 1000);
			JSONArray array = JSONArray.parseArray(JSON.toJSONString(orders));
			result.put("data", array);
			result.put("count", count);
			
			return result;
		}
		
		@RequestMapping(value="/order/confirmRefund")
		@ResponseBody
		public Map<String, Integer> confirmRefund(HttpServletRequest request) throws Exception {
			System.out.println("----orderHandler----confirmRefund()----");
			
			int state = 0;
			int oid = Integer.parseInt(request.getParameter("oid"));
			try {
				orderService.changeRefundStatus(oid);
				state = 1;
			} catch(Exception e) {
				e.printStackTrace();
			}
			Map<String, Integer> result = new HashMap<String, Integer>();
			result.put("state", state);
			
			return result;
		}
		
		@RequestMapping(value="/order/confirmCheck")
		@ResponseBody
		public Map<String, Integer> confirmCheck(HttpServletRequest request) throws Exception {
			System.out.println("----orderHandler----confirmCheck()----");
			
			int state = 0;
			int oid = Integer.parseInt(request.getParameter("oid"));
			try {
				orderService.changePaidStatus(oid);
				state = 1;
			} catch(Exception e) {
				e.printStackTrace();
			}
			Map<String, Integer> result = new HashMap<String, Integer>();
			result.put("state", state);
			
			return result;
		}
}
