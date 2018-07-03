package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.po.FreeListen;
import com.neusoft.po.Lesson;
import com.neusoft.service.CourseService;
import com.neusoft.tools.Page;

public class CourseServiceBean implements CourseService {

	@Override
	public List<Lesson> selectAllLessons(Page page, int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Lesson> selectBranchLessons(Page page, int aid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FreeListen> selectAllFreeListens(Page page, int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Lesson> selectLessonsByCategory(Page page, String category, int qid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalNumOfLessons(int qid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectToalNumOfFreeListens(int qid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotalNumOfBranchLessons(int aid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


}
