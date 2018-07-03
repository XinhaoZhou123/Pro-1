package com.neusoft.service;

import java.util.List;

import com.neusoft.po.FreeListenBook;
import com.neusoft.tools.Page;

public interface FreeListenBookService {
		public List<FreeListenBook> selectFreeListenBooks(Page page,long tel) throws Exception;
		public List<FreeListenBook> selectFreeListenBooksByStatus(Page page,Long tel,String status) throws Exception;
		public int updateFreeListenBook(int id,String status) throws Exception;
		public int selectTotalNumOfFreeListenBook(Long tel) throws Exception;
		public int selectTotalNumOfFreeListenBookByStatus(Long tel,String status) throws Exception;
}
