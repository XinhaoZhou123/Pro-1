package com.neusoft.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.FreeListenBookMapper;
import com.neusoft.po.FreeListenBook;
import com.neusoft.service.FreeListenBookService;
import com.neusoft.tools.PageReservationTool;
import com.neusoft.tools.Page;
import com.neusoft.vo.ReservationCondition;
@Service
public class FreeListenBookServiceBean implements FreeListenBookService {
	@Autowired
	FreeListenBookMapper freeMapper;
	@Override
	public List<FreeListenBook> selectFreeListenBooks(Page page, long tel) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FreeListenBook> selectFreeListenBooksByStatus(Page page, Long tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateFreeListenBook(int id, String status) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfFreeListenBook(Long tel) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfFreeListenBookByStatus(Long tel, String status) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	/*
	 * 后台
	 */
	/*
	 * (non-Javadoc)
	 * @see com.neusoft.service.ReservationService#findPageByCondition(com.neusoft.vo.ReservationCondition, int)
	 * 通过条件查找一页预约
	 */
	@Override
	public List<FreeListenBook> findPageByCondition(ReservationCondition condition, int rowStart)
			throws Exception {
		Map<String, Object> m = new HashMap<String,Object>();
		m.put("condition",condition);
		m.put("rowStart", rowStart-1);
		m.put("itemsOfPage", PageReservationTool.itemsOfPage);
		
		return freeMapper.findPageByCondition(m);
	}
	/*
	 * (non-Javadoc)
	 * @see com.neusoft.service.ReservationService#dealReservation(int)
	 * 处理预约
	 */
	@Override
	public void dealReservation(int id) throws Exception {
		freeMapper.dealReservation(id);
	}	
	/*
	 * (non-Javadoc)
	 * 在条件下查找到预约个数
	 * @see com.neusoft.service.ReservationService#findReservationCountByCondition(com.neusoft.vo.ReservationCondition)
	 */
	@Override
	public int findReservationCountByCondition(ReservationCondition condition) throws Exception {
		
		return freeMapper.findReservationCountByCondition();
	}
	/*
	 * (non-Javadoc)
	 * 查找所有预约
	 * @see com.neusoft.service.FreeListenBookService#findAllFreeListenBooks()
	 */
	@Override
	public List<FreeListenBook> findAllFreeListenBooks() throws Exception {
		List<FreeListenBook> frees = freeMapper.findAllReservation();
		//System.out.println(frees);
		return frees;
	}
}
