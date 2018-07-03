package com.neusoft.service;

import java.util.List;

import com.neusoft.po.FreeListen;
import com.neusoft.po.Lesson;
import com.neusoft.tools.Page;

public interface CourseService {
		public List<Lesson> selectAllLessons(Page page,int qid) throws Exception;
		public List<Lesson> selectBranchLessons(Page page,int aid) throws Exception;//aid分部id
		public List<FreeListen> selectAllFreeListens(Page page,int qid) throws Exception;
		public List<Lesson> selectLessonsByCategory(Page page,String category,int qid);
		public int selectTotalNumOfLessons(int qid) throws Exception;
		public int selectToalNumOfFreeListens(int qid) throws Exception;
		public int selectTotalNumOfBranchLessons(int aid) throws Exception;
}
