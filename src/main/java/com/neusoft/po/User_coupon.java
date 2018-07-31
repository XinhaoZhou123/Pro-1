package com.neusoft.po;

public class User_coupon {
	private int id;				//id
	private int c_id;			//优惠券id
	private int u_id;			//用户id
	private String addtime;		//用户添加优惠券的时间
	private String status;		//状态：已使用和未使用、已过期
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
