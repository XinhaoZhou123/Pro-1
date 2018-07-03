package com.neusoft.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.po.FreeListenBook;
import com.neusoft.service.FreeListenBookService;
import com.neusoft.tools.PageReservationTool;
import com.neusoft.vo.ReservationCondition;

@Controller
public class FreeListenBookHandler {
	@Autowired
	private FreeListenBookService free_serv;
	
	
	/*
	 * 通过条件和分页查找预约
	 */
	@RequestMapping(value="/reserve/findPageByCondition")
	@ResponseBody
	public List<FreeListenBook> findPageByCondition(ReservationCondition condition,
			int pageNum,HttpServletRequest request) throws Exception{

		List<FreeListenBook> pageFrees;
		//通过条件获得预约总数量
		int count = free_serv.findReservationCountByCondition(condition);
		//创建工具类，将其放在request中
		PageReservationTool pTool = new PageReservationTool(pageNum,count);
		request.setAttribute("pageTool", pTool);
		//获得第一行的行数rowStart
		int rowStart=(pageNum-1)*PageReservationTool.itemsOfPage+1;
		pageFrees = free_serv.findPageByCondition(condition, rowStart);
		//System.out.println("ReservationHandler..........findPageByCondition.....count:"+count+"rowStart:"+rowStart);
		return pageFrees;
	}
	/*
	 * 处理预约
	 */
	@RequestMapping(value="/reserve/dealReservation")
	@ResponseBody
	public String dealReservation(int id) throws Exception{
		
		free_serv.dealReservation(id);
		return "处理成功";
	}
	
	
	//找到所有预约
	@RequestMapping(value="/reserve/findAll")
	@ResponseBody
	public List<FreeListenBook> getAllReservation(HttpServletRequest request) throws Exception{
		List<FreeListenBook> frees = free_serv.findAllFreeListenBooks();
		request.setAttribute("frees", frees);
		for(FreeListenBook free:frees){
			System.out.println(free.getId()+"\t"+free.getFid()+"\t"+free.getUserName()+"\t"+free.getStatus());
		}
		return frees;
	}
	
	
	
	
	@RequestMapping(value="/reserve/findByCondition")
	@ResponseBody
	public String getReservationByCondition(ReservationCondition condition,
			HttpServletRequest request) throws Exception{
		
		return null;
	}
	
}
