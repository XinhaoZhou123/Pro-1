package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.FreeListen;
import com.neusoft.po.Lesson;
import com.neusoft.tools.Page;

public interface CourseMapper {
		public List<Lesson> getLessons(Page page,int qid) throws Exception;
		public List<Lesson> getLessonsByBranchid(Page page,int aid) throws Exception;
		public List<FreeListen> getFreeListens(Page page,int qid)throws Exception;//aid:分布id
		public List<Lesson> getLessonsByCategory(Page page,String category,int qid) throws Exception;
		public int getTotalNumOfLessons(int qid) throws Exception;
		public int getTotalNumOfFreeListens(int qid) throws Exception;
		public int getTotalNumOdBranchLessons(int aid) throws Exception;
}
