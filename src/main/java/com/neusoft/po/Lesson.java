package com.neusoft.po;
//课程
public class Lesson {
	int lid;				//课程id
	int lname;				//课程名
	String imgUrl;			//图片url
	float lprice;			//课程价格
	String ldesc;			//课程富文本
	String category;		//课程类别
	
	int  qid;				//企业id
	String pubTime;			//发布时间
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public int getLname() {
		return lname;
	}
	public void setLname(int lname) {
		this.lname = lname;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public float getLprice() {
		return lprice;
	}
	public void setLprice(float lprice) {
		this.lprice = lprice;
	}
	public String getLdesc() {
		return ldesc;
	}
	public void setLdesc(String ldesc) {
		this.ldesc = ldesc;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getPubTime() {
		return pubTime;
	}
	public void setPubTime(String pubTime) {
		this.pubTime = pubTime;
	}
	
	
}
