package com.neusoft.service;

import java.util.List;

import com.neusoft.po.IntegralValue;
import com.neusoft.po.QianDao;
import com.neusoft.vo.UserVo;

public interface QianDaoService {
	public int insertDateUserID(QianDao qianDao) throws Exception;
	public Integer findByUserIDQidDate(QianDao qianDao) throws Exception;
	public int addIntegralByUid(UserVo userVo) throws Exception;
	public int decreaseIntegralByUidQid(UserVo userVo) throws Exception;
	public Integer findIntegralByUidQid(UserVo userVo) throws Exception;
	public List<String> findDateByUidQid(QianDao qianDao) throws Exception;
	public int increaseIntegralByUidQid(UserVo userVo) throws Exception;
	public List<String> findDateAll(UserVo userVo) throws Exception;
	public Integer getOneIntegral() throws Exception;
	public Integer getBuIntegral() throws Exception;
	public Integer getSevenIntegral() throws Exception;
	public int updateIntegral(IntegralValue integralValue) throws Exception;
}
