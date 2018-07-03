package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.po.FreeListenBook;
import com.neusoft.tools.Page;

public interface FreeListenBookMapper {
		public List<FreeListenBook> getFreeListenBook(Page page,Long tel) throws Exception;
		public List<FreeListenBook> getFreeListenBookByStatus(Page page,Long tel,String status) throws Exception;
		public int updateFreeListenBook(int id,String status) throws Exception;
		public int getTotalNumOfFreeListenBooks(Long tel) throws Exception;
		public int getTotalNumOfFreeListenBooks(Long tel,String status) throws Exception;
		
		
		/*
		 * 后台
		 */
		//找到所有预约
		public List<FreeListenBook> findAllReservation() throws Exception;
		//处理订单
		public int dealReservation(int id) throws Exception;
		//通过条件查找订单总数
		public int findReservationCountByCondition() throws Exception;
		//根据条件查找第几页的订单
		public List<FreeListenBook> findPageByCondition(Map<String,Object> map) throws Exception;
		
		
}
