package com.neusoft.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.service.BackIndexService;

@Controller
public class BackIndexHandler {
	@Autowired
	private BackIndexService ba_index_serv;
	
	
	/*
	 * 获得六个统计数据
	 */
	@RequestMapping(value="/BackEnd/index/getSixStatics")
	@ResponseBody
	public Map<String,Object> initial(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		Integer qid = (Integer)session.getAttribute("qid");
		
		//qid=1;
		
		/*	Controller里没有事务回滚
		 * Map<String,Object> map = new HashMap<String, Object>();
		int userNumbers=0;
		int todayReserv=0;
		int todayOrder=0;
		int todayGood=0;
		double monthProfit=0;
		int monthMessage=0;
		try{
			userNumbers = ba_index_serv.selectUserNum(qid);
			todayReserv = ba_index_serv.selectTodayBookNum(qid);
			todayOrder = ba_index_serv.selectTodayOrderNum(qid);
			todayGood = ba_index_serv.selectTodayGoodNum(qid);
			monthProfit = ba_index_serv.selectMonthProfit(qid);
			monthMessage = ba_index_serv.selectMonthMessageNum(qid);
		}catch(Exception e){
			e.printStackTrace();
		}
		map.put("userNumbers", userNumbers);
		map.put("todayReserv", todayReserv);
		map.put("todayOrder", todayOrder);
		map.put("todayGood", todayGood);
		map.put("monthProfit", monthProfit);
		map.put("monthMessage", monthMessage);
		*/
		return ba_index_serv.selectSix(qid);
	}
	
	@RequestMapping(value = "/BackEnd/index/getStatics")
	@ResponseBody
	public Map<String,Object> getStatiscs(Integer year,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		Integer qid = (Integer)session.getAttribute("qid");
		Map<String,Object> map=new HashMap<String, Object>();
		
		List<Integer> yearFLBN = ba_index_serv.selectYearFLBN(year, qid);
		List<Integer> yearOrderNum = ba_index_serv.selectYearOrderNum(year, qid);
		List<Double> yearProfit = ba_index_serv.selectYearProfit(year, qid);
		Integer used =ba_index_serv.selectYearOSN(year, qid, "已使用");
		Integer waitPay = ba_index_serv.selectYearOSN(year, qid, "待付款");
		Integer paid = ba_index_serv.selectYearOSN(year, qid, "已付款");
		Integer returning = ba_index_serv.selectYearOSN(year, qid, "退款中");
		Integer returned = ba_index_serv.selectYearOSN(year, qid, "已退款");
		map.put("FLBN",yearFLBN);
		map.put("orderNum", yearOrderNum);
		map.put("profit", yearProfit);
		map.put("used", used);
		map.put("waitPay", waitPay);
		map.put("paid", paid);
		map.put("returning", returning);
		map.put("returned", returned);
		return map;
		
	}
}
