package com.neusoft.service;

import java.util.List;

import com.neusoft.po.FreeListenBook;
import com.neusoft.tools.Page;
import com.neusoft.vo.ReservationCondition;

public interface FreeListenBookService {
		public List<FreeListenBook> selectFreeListenBooks(Page page,long tel) throws Exception;
		public List<FreeListenBook> selectFreeListenBooksByStatus(Page page,Long tel,String status) throws Exception;
		public int updateFreeListenBook(int id,String status) throws Exception;
		public int selectTotalNumOfFreeListenBook(Long tel) throws Exception;
		public int selectTotalNumOfFreeListenBookByStatus(Long tel,String status) throws Exception;
		
		/*
		 * 后台
		 */
		
		//找到所有预约
		public List<FreeListenBook> findAllFreeListenBooks() throws Exception;
		//处理预约
		public void dealReservation(int id) throws Exception;
		//通过条件查找一页预约
		public List<FreeListenBook> findPageByCondition(ReservationCondition condition
				,int rowStart) throws Exception;
		//通过条件查找预约数量
		public int findReservationCountByCondition(ReservationCondition condition) throws Exception;
}
