package com.neusoft.service;

import java.util.List;
import java.util.Map;

public interface BackIndexService {
	
			//查询用户总数
			public Integer selectUserNum(int qid) throws Exception;
			//查询今日预约总数
			public Integer selectTodayBookNum(int qid) throws Exception;
			//查询今日订单总数
			public Integer selectTodayOrderNum(int qid) throws Exception;
			//查询今日点赞总数
			public Integer selectTodayGoodNum(int qid) throws Exception;
			//查询本月流水
			public Double selectMonthProfit(int qid) throws Exception;
			//查询本月朋友圈发布数量
			public Integer selectMonthMessageNum(int qid) throws Exception;
			//查找以上六个数据
			public Map<String,Object> selectSix(int qid) throws Exception;
			
			public int seleceMaxLessonId(int qid) throws Exception;
			
			//查找一年中12个月的流水
			public List<Double> selectYearProfit(int year,int qid) throws Exception;
			//查找一年中12个月预约的数量
			public List<Integer> selectYearFLBN(int year,int qid) throws Exception;
			//查找一年中12个月的订单数量
			public List<Integer> selectYearOrderNum(int year,int qid) throws Exception;
			//查找一年中某状态的订单数量
			public Integer selectYearOSN(int year,int qid,String status) throws Exception;
}
