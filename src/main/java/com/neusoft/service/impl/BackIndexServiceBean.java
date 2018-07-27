package com.neusoft.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.BackIndexMapper;
import com.neusoft.service.BackIndexService;
@Service
public class BackIndexServiceBean implements BackIndexService {
	@Autowired
	private BackIndexMapper backmapper;
	@Override
	public Integer selectUserNum(int qid) throws Exception {
		return backmapper.findUserNum(qid);
	}
	@Override
	public Integer selectTodayBookNum(int qid) throws Exception {
		return backmapper.findTodayBookNum(qid);
	}
	@Override
	public Integer selectTodayOrderNum(int qid) throws Exception {
		return backmapper.findTodayOrderNum(qid);
	}
	@Override
	public Integer selectTodayGoodNum(int qid) throws Exception {
		return backmapper.findTodayGoodNum(qid);
	}
	@Override
	public Double selectMonthProfit(int qid) throws Exception {
		return backmapper.findMonthProfit(qid);
	}
	@Override
	public Integer selectMonthMessageNum(int qid) throws Exception {
		return backmapper.findMonthMessageNum(qid);
	}
	@Override
	public Map<String, Object> selectSix(int qid) throws Exception {
		Map<String,Object> map = new HashMap<String, Object>();
		
		Integer userNumbers=backmapper.findUserNum(qid);
		Integer todayReserv = backmapper.findTodayBookNum(qid);
		Integer todayOrder=backmapper.findTodayOrderNum(qid);
		Integer todayGood=backmapper.findTodayGoodNum(qid);
		Double monthProfit=backmapper.findMonthProfit(qid);
		monthProfit = (monthProfit==null?0:monthProfit);
		Integer monthMessage=backmapper.findMonthMessageNum(qid);
		map.put("userNumbers", userNumbers);
		map.put("todayReserv", todayReserv);
		map.put("todayOrder", todayOrder);
		map.put("todayGood", todayGood);
		map.put("monthProfit", monthProfit);
		map.put("monthMessage", monthMessage);
		return map;
	}
	@Override
	public int seleceMaxLessonId(int qid) throws Exception {
		return backmapper.getMaxLessonId(qid);
	}
	@Override
	public List<Integer> selectYearFLBN(int year, int qid) throws Exception {
		List<Integer> list =new ArrayList<Integer>();
		for(int i=1;i<=12;i++){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("qid", qid);
			map.put("year",year);
			map.put("month",i);
			Integer num = backmapper.findFLBNByMonth(map);
			list.add(num);	
		}
		return list;
	}
	@Override
	public List<Integer> selectYearOrderNum(int year, int qid) throws Exception {

		List<Integer> list =new ArrayList<Integer>();
		for(int i=1;i<=12;i++){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("qid", qid);
			map.put("year",year);
			map.put("month",i);
			Integer num = backmapper.findOrderNumByMonth(map);
			list.add(num);	
		}
		return list;
	}
	@Override
	public Integer selectYearOSN(int year, int qid ,String status) throws Exception {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("qid", qid);
		map.put("year",year);
		map.put("status",status);
		Integer num = backmapper.findOSNByMonth(map);
			
		return num;
	}
	@Override
	public List<Double> selectYearProfit(int year, int qid) throws Exception {
		List<Double> list =new ArrayList<Double>();
		for(int i=1;i<=12;i++){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("qid", qid);
			map.put("year",year);
			map.put("month",i);
			Double num = backmapper.findProfitByMonth(map);
			num = num==null?0:num;
			list.add(num);	
		}
		return list;
	}
}
