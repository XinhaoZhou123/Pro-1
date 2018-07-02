package com.neusoft.po;
//朋友圈点赞
public class MessageLike {
	int id;					//id
	int mid;				//朋友圈id
	String nickName;		//昵称
	String stime;			//点赞时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	
	
}
