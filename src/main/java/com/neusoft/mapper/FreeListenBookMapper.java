package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.FreeListenBook;
import com.neusoft.tools.Page;

public interface FreeListenBookMapper {
		public List<FreeListenBook> getFreeListenBook(Page page,Long tel) throws Exception;
		public List<FreeListenBook> getFreeListenBookByStatus(Page page,Long tel,String status) throws Exception;
		public int updateFreeListenBook(int id,String status) throws Exception;
		public int getTotalNumOfFreeListenBooks(Long tel) throws Exception;
		public int getTotalNumOfFreeListenBooks(Long tel,String status) throws Exception;
}
