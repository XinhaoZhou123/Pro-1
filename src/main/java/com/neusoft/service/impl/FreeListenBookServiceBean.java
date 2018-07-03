package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.po.FreeListenBook;
import com.neusoft.service.FreeListenBookService;
import com.neusoft.tools.Page;

public class FreeListenBookServiceBean implements FreeListenBookService {

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

}
