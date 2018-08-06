package com.neusoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.QianDaoMapper;
import com.neusoft.po.IntegralValue;
import com.neusoft.po.QianDao;
import com.neusoft.service.QianDaoService;
import com.neusoft.vo.UserVo;

@Service
public class QianDaoServiceBean implements QianDaoService{

	@Autowired
	private QianDaoMapper qianDaoMapper;
	
	public int insertDateUserID(QianDao qianDao) throws Exception{		
		System.out.println(".............QianDaoServiceBean...........insertDataUserID.........");
		int insertnum = qianDaoMapper.insertDateUserID(qianDao);
		return insertnum;
	}

	@Override
	public Integer findByUserIDQidDate(QianDao qianDao) throws Exception {
		System.out.println("............QianDaoServiceBean.............findByUserIDQidDate.........");
		Integer findnum = qianDaoMapper.findByUserIDQidDate(qianDao);
		return findnum;
	}

	@Override
	public int addIntegralByUid(UserVo userVo) throws Exception {
		System.out.println("............QianDaoServiceBean.........addIntegralByUid.............");
		int updatenum = qianDaoMapper.addIntegralByUid(userVo);
		return updatenum;
	}

	@Override
	public int decreaseIntegralByUidQid(UserVo userVo) throws Exception {
		System.out.println(".............QianDaoServiceBean............decreaseIntegralByUidQid.........");
		int updatenum = qianDaoMapper.decreaseIntegralByUidQid(userVo);
		return updatenum;
	}

	@Override
	public Integer findIntegralByUidQid(UserVo userVo) throws Exception {
		System.out.println(".........QianDaoServiceBean............findIntegralByUidQid..............");
		int num = qianDaoMapper.findIntegralByUidQid(userVo);
		return num;
	}

	@Override
	public List<String> findDateByUidQid(QianDao qianDao) throws Exception {
		System.out.println(".........QianDaoServiceBean.........findDateByUidQid.........");
		List<String> datelist = qianDaoMapper.findDateByUidQid(qianDao);
		return datelist;
	}

	@Override
	public int increaseIntegralByUidQid(UserVo userVo) throws Exception {
		System.out.println("..........QianDaoServiceBean..........increaseIntegralByUidQid........");
		int updatenum = qianDaoMapper.increaseIntegralByUidQid(userVo);
		return updatenum;
	}

	@Override
	public List<String> findDateAll(UserVo userVo) throws Exception {
		System.out.println("..........QianDaoServiceBean...........findDateAll.............");
		List<String> list = qianDaoMapper.findDateAll(userVo);
		return list;
	}

	@Override
	public Integer getOneIntegral(int qid ) throws Exception {
		System.out.println(".........QianDaoServiceBean..........getOneIntegral............");
		int oneintegral = qianDaoMapper.getOneIntegral(qid );
		return oneintegral;
	}

	@Override
	public Integer getBuIntegral(int qid ) throws Exception {
		System.out.println(".........QianDaoServiceBean.........getBuIntegral...........");
		int buintegral = qianDaoMapper.getBuIntegral(qid );
		return buintegral;
	}

	@Override
	public Integer getSevenIntegral(int qid ) throws Exception {
		System.out.println("........QianDaoServiceBean..........getSevenIntegral..........");
		int sevenintegral = qianDaoMapper.getSevenIntegral(qid );
		return sevenintegral;
	}

	@Override
	public int updateIntegral(IntegralValue integralValue) throws Exception {
		System.out.println("......QianDaoServiceBean.........updateIntegral.........");
		int updatenum = qianDaoMapper.updateIntegral(integralValue);
		return updatenum;
	}
	
	
}
