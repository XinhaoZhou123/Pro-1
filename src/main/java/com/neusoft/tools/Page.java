package com.neusoft.tools;

import java.util.ArrayList;
import java.util.List;

public class Page {
	private  int  pageNum;
	private  int pageListNum;
	private int currentPage;
	private int totalPage;
	
	private int startPage;
	
	private int endPage;
	
	private int start;
	private int end;
	
	public Page(int pageNum,int pageListNum,int currentPage,int num){
		this.pageNum = pageNum;
		this.pageListNum = pageListNum;
	
		this.totalPage = this.setTotalPage(num);
		
		this.setCurrentPage(currentPage);
		this.setStart_EndPage();
		
		this.start = this.getStart();
		this.end = this.getEnd();
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageListNum() {
		return pageListNum;
	}
	public void setPageListNum(int pageListNum) {
		this.pageListNum = pageListNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		if(currentPage<1){
			currentPage = 1;
		}
		if(currentPage>totalPage){
			currentPage = totalPage;
		}
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public int setTotalPage(int num) {
		if(num==0){
			return 1;
		}
		return num/pageNum+(num%pageNum==0?0:1);
	}
	public int getStart(){
		return (currentPage-1)*pageNum;
	}
	public int getEnd(){
		return currentPage*pageNum-start;
	}	
	public List<Integer> getPageSort(){
		List<Integer> list = new ArrayList<Integer>();
		int p_l = pageListNum/2;	
		int i=currentPage-p_l;
//		int offset = i - (1-p_l);
		int offset = currentPage-1;
		int j=i<=0?pageListNum-offset:(pageListNum-p_l);
		int lastlength = totalPage-currentPage;
		i=lastlength>=p_l?pageListNum-j:(pageListNum-lastlength-1);
		for(int m=i;m>0;m--){
			if(currentPage-m>0){
				list.add(currentPage-m);
			}
		}
		for(int m=0;m<j;m++){
			if(currentPage+m>totalPage){
				break;
			}				
			list.add(currentPage+m);
		}
		return list;			
	}
	public void setStart_EndPage() {
		if(totalPage<pageListNum){
			startPage = 1;
			endPage = totalPage;
		}else{
			if(currentPage<=(pageListNum/2+1)){
				startPage = 1;
				endPage = pageListNum;
			}
			else if(currentPage+pageListNum/2>totalPage){
				endPage = totalPage;
				startPage = totalPage-pageListNum+1;
			}else{
				startPage = currentPage - pageListNum/2;
				endPage = currentPage + pageListNum/2;
			}
		}
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage ;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public void setEnd(int end) {
		this.end = end;
	}
}
