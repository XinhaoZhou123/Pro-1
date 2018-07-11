package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.po.Refund;
import com.neusoft.po.Sorder;
import com.neusoft.tools.Page;

public interface OrderMapper {
		public List<Sorder> getOrders(Map<String, Object> map) throws Exception;
		public List<Sorder> getOrdersPage(Map<String, Object> map) throws Exception;
		public int getOrdersCount(Map<String, Object> map) throws Exception;
		public void changeRefundStatus(int oid) throws Exception;
		public void changePaidStatus(int oid) throws Exception;	
		
		public List<Sorder> getUserOrders(Page page,String tel ) throws Exception;
		public List<Sorder> getUserOrdersByStatus(Page page,Long tel,String status) throws Exception;
		public List<Refund> getUserRefunds(Page page,Long tel) throws Exception;
		public int getTotalNumOfUserOrders(Long tel) throws Exception;
		public int getTotalNumOfUserOrdersByStatus(Long tel,String status) throws Exception;
		public int getTotalNumOfUserRefunds(Long tel) throws Exception;
		
}
