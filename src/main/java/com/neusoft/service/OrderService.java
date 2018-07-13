package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.po.Refund;
import com.neusoft.po.Sorder;
import com.neusoft.tools.Page;

public interface OrderService {
	public List<Sorder> selectAllOrders(int qid, String tel, String status) throws Exception;
	public List<Sorder> selectAllOrdersPage(Map<String, Object> map) throws Exception;
	public int selectOrdersCount(Map<String, Object> map) throws Exception;
	public void changeRefundStatus(int oid) throws Exception;
	public void changePaidStatus(int oid) throws Exception;
	
	public List<Sorder> selectUserOrders(Page page,String tel ) throws Exception;
	public List<Sorder> selectUserOrdersByStatus(Page page,String tel,String status) throws Exception;
	public List<Refund> selectUserRefunds(Page page,String tel) throws Exception;
	public int selectTotalNumOfUserOrders(String tel) throws Exception;
	public int selectTotalNumOfUserOrdersByStatus(String tel,String status) throws Exception;
	public int selectTotalNumOfUserRefunds(String tel) throws Exception;
	
}
