package com.neusoft.po;

import java.util.ArrayList;
import java.util.List;

public class Address {
	private int aid;				//分部id
	private String branch;		//分部名称
	private String address;		//地址
	private String  tel;			//电话号码
	private double longtitude;	//经度
	private double latitude;	//纬度
	
	private int qid;			//企业id
	//private List<FreeListen> freelistens;
	//private List<Lesson> lessons;

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public double getLongtitude() {
		return longtitude;
	}

	public void setLongtitude(double longtitude) {
		this.longtitude = longtitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}	


	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}
	
}
