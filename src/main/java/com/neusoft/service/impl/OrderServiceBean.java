package com.neusoft.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.OrderMapper;
import com.neusoft.po.Refund;
import com.neusoft.po.Sorder;
import com.neusoft.service.OrderService;
import com.neusoft.tools.MoreMessagePage;
import com.neusoft.tools.MorePage;
import com.neusoft.tools.Page;

@Service
public class OrderServiceBean implements OrderService {
	
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public List<Sorder> selectUserOrders(Page page, String tel) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Sorder> selectUserOrdersByStatus(Page page, String tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Refund> selectUserRefunds(Page page, String tel) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalNumOfUserOrders(String tel) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfUserOrdersByStatus(String tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfUserRefunds(String tel) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Sorder> selectAllOrders(int qid, String tel, String status) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("qid", qid);
		map.put("tel", tel);
		map.put("status", status);
		List<Sorder> orders = orderMapper.getOrders(map);
		System.out.println(orders.size());
		return orders;
	}

	@Override
	public List<Sorder> selectAllOrdersPage(Map<String, Object> map) throws Exception {
		int count = orderMapper.getOrdersCount(map);
		Page page = new MorePage((int) map.get("limit"),5,(int) map.get("currentPage"),count);
		map.put("page", page);
		List<Sorder> orders = orderMapper.getOrdersPage(map);
		return orders;
	}

	@Override
	public int selectOrdersCount(Map<String, Object> map) throws Exception {
		int count = orderMapper.getOrdersCount(map);
		return count;
	}

	@Override
	public void changeRefundStatus(int oid) throws Exception{
		orderMapper.changeRefundStatus(oid);
	}

	@Override
	public void changePaidStatus(int oid) throws Exception {
		orderMapper.changePaidStatus(oid);
	}
}
