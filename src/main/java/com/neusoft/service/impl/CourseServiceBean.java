package com.neusoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.CourseMapper;
import com.neusoft.po.FreeListen;
import com.neusoft.po.Lesson;
import com.neusoft.po.LessonBranch;
import com.neusoft.service.CourseService;
import com.neusoft.tools.Page;
import com.neusoft.vo.CourseCategoryVo;
import com.neusoft.vo.CoursePageVo;
import com.neusoft.vo.FreeListenPageVo;
import com.neusoft.vo.TotalCoursePageVo;
import com.neusoft.vo.TotalFreeListenPageVo;

@Service
public class CourseServiceBean implements CourseService {

	@Autowired
	private CourseMapper cm;
	
	/*
	 * (non-Javadoc)
	 * @see com.neusoft.service.CourseService#selectAllLessons(com.neusoft.vo.TotalCoursePageVo)
	 */
	@Override
	public List<Lesson> selectAllLessons(TotalCoursePageVo t) throws Exception {
		// TODO Auto-generated method stub
		return cm.getLessons(t);
	}

	/*
	 * 我实现的 获得一个部门所有的课程
	 */
	@Override
	public List<Lesson> selectBranchLessons(CoursePageVo cpv) throws Exception {
		// TODO Auto-generated method stub
		return cm.getLessonsByBranchid(cpv);
	}

	@Override
	public List<FreeListen> selectAllFreeListens(TotalFreeListenPageVo fpv) throws Exception {
		// TODO Auto-generated method stub
		return cm.getFreeListens(fpv);
	}
	
	
	@Override
	public List<Lesson> selectLessonsByCategory(CourseCategoryVo ccv) throws Exception {
		// TODO Auto-generated method stub
		return cm.getLessonsByCategory(ccv);
	}

	@Override
	public int selectTotalNumOfLessons(int qid) throws Exception {
		// TODO Auto-generated method stub
		return cm.getTotalNumOfLessons(qid);
	}

	@Override
	public int selectToalNumOfFreeListens(int qid) throws Exception {
		// TODO Auto-generated method stub
		return cm.getTotalNumOfFreeListens(qid);
	}

	@Override
	public int selectTotalNumOfBranchLessons(int aid) throws Exception {
		// TODO Auto-generated method stub
		return cm.getTotalNumOdBranchLessons(aid);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public void saveLesson(Lesson l) throws Exception {
		System.out.println("service 开始插入新的课程");
		System.out.println(l.getImgUrl());
		cm.addLesson(l);
	}

	@Override
	public void saveLessonBranch(LessonBranch lb) throws Exception {
		System.out.println("service插完了lesson， 开始插入lesson branch");
		
		cm.addLessonBranch(lb);
		
	}

	@Override
	public Lesson getLession(int lid) throws Exception {
		// TODO Auto-generated method stub
		Lesson l=null;
		try {
			l = cm.getLesson(lid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			l = null;
			e.printStackTrace();
		}		
		return l;
	}

	@Override
	public void updateLesson(Lesson l) throws Exception {
		System.out.println("service开始修改");
		cm.updateLesson(l);
		
	}

	@Override
	public void updateLessonBranch(LessonBranch lb) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("service开始修改2");
		cm.updateLessonBranch(lb);
	}

	@Override
	public void saveFreeListen(FreeListen l) throws Exception {
		cm.addFreeListen(l);
		
	}

	@Override
	public void updateFreeListen(FreeListen l) throws Exception {
		// TODO Auto-generated method stub
		cm.updateFreeListen(l);
	}

	@Override
	public FreeListen getFreeListen(int id) throws Exception {
		
	
		FreeListen l=null;
		try {
			l = cm.getFreeListen(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			l = null;
			e.printStackTrace();
		}		
		return l;
	}

	@Override
	public void deleteCourse(int lid) throws Exception {


		cm.deleteCourse(lid);
		
	}

	@Override
	public void deleteFreeListen(int id) throws Exception {
		// TODO Auto-generated method stub
		cm.deleteFreeListen(id);
	}

	@Override
	public List<FreeListen> selectBranchFreeListens(FreeListenPageVo fpv) throws Exception {
		// TODO Auto-generated method stub
		return cm.getFreeListensByBranch(fpv);
	}


}
