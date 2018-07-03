package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.po.Refund;
import com.neusoft.po.Sorder;
import com.neusoft.service.OrderService;
import com.neusoft.tools.Page;

public class OrderServiceBean implements OrderService {

	@Override
	public List<Sorder> selectUserOrders(Page page, Long tel) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Sorder> selectUserOrdersByStatus(Page page, Long tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Refund> selectUserRefunds(Page page, Long tel) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalNumOfUserOrders(Long tel) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfUserOrdersByStatus(Long tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfUserRefunds(Long tel) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
