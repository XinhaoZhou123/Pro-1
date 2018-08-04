package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

public interface BackIndexMapper {
		//查询用户总数
		public Integer findUserNum(int qid) throws Exception;
		//查询今日预约总数
		public Integer findTodayBookNum(int qid) throws Exception;
		//查询今日订单总数
		public Integer findTodayOrderNum(int qid) throws Exception;
		//查询今日点赞总数
		public Integer findTodayGoodNum(int qid) throws Exception;
		//查询本月流水
		public Double findMonthProfit(int qid) throws Exception;
		//查询本月朋友圈发布数量
		public Integer findMonthMessageNum(int qid) throws Exception;
		
		public int getMaxLessonId(int qid) throws Exception;
		
		//查询某个月的流水qid month year
		public Double findProfitByMonth(Map<String,Object> map) throws Exception;
		//查询某个月的订单总量qid month year
		public Integer findOrderNumByMonth(Map<String,Object> map) throws Exception;
		//查询某个月的预约总量qid month year
		public Integer findFLBNByMonth(Map<String,Object> map) throws	Exception;
		//查询某年的订单状态数量qid status year
		public Integer findOSNByMonth(Map<String,Object> map) throws Exception;
		
}
