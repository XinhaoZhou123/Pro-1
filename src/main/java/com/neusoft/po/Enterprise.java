package com.neusoft.po;

import java.util.List;

//企业
public class Enterprise {
	private int qid;
	private String name;
	private String videoPath;
	private String introduction;	//企业介绍
	private String jczs;			//富文本
	//private List<Teacher> teachers;
	//private List<Lesson>  lessons;
	//private List<Message> messages;
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
