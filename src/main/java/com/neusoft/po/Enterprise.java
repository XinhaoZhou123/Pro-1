package com.neusoft.po;


//企业
public class Enterprise {
	int qid;
	String name;
	String videoPath;
	String introduction;	//企业介绍
	String jczs;			//富文本
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getJczs() {
		return jczs;
	}
	public void setJczs(String jczs) {
		this.jczs = jczs;
	}
	
	
}
