package com.neusoft.po;

public class Coupon {
	
	private int c_id;				//优惠券id
	private int qid;				//企业id
	private String c_category;		//类型：JAVA、Python、全类型
	private String name;			//优惠券名
	private String c_status;		//优惠券状态
	private float decrease;			//优惠金额
	private String startdate;		//使用开始日期
	private String enddate;			//使用截止日期
	private String pubtime;			//发布时间
	private float use_condition;	//使用条件（满100元）
	private int chan_integral;		//需要兑换的积分
	private int totalnum;			//优惠券发布总数
	private int remain;				//剩余的数量
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_category() {
		return c_category;
	}
	public void setC_category(String c_category) {
		this.c_category = c_category;
	}
	public String getC_status() {
		return c_status;
	}
	public void setC_status(String c_status) {
		this.c_status = c_status;
	}
	public float getDecrease() {
		return decrease;
	}
	public void setDecrease(float decrease) {
		this.decrease = decrease;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getPubtime() {
		return pubtime;
	}
	public void setPubtime(String pubtime) {
		this.pubtime = pubtime;
	}
	public float getUse_condition() {
		return use_condition;
	}
	public void setUse_condition(float use_condition) {
		this.use_condition = use_condition;
	}
	public int getChan_integral() {
		return chan_integral;
	}
	public void setChan_integral(int chan_integral) {
		this.chan_integral = chan_integral;
	}
	
	public int getTotalnum() {
		return totalnum;
	}
	public void setTotalnum(int totalnum) {
		this.totalnum = totalnum;
	}
	public int getRemain() {
		return remain;
	}
	public void setRemain(int remain) {
		this.remain = remain;
	}
	
	
}
