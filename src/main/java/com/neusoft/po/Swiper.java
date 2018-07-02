package com.neusoft.po;
//企业首页的图片
public class Swiper {
	int id;
	int qid;			//企业id
	String imgUrl;		//图片路径
	char category;		//科目类别
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public char getCategory() {
		return category;
	}
	public void setCategory(char category) {
		this.category = category;
	}
	
	
}
