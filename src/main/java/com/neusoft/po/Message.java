package com.neusoft.po;
//朋友圈
public class Message {
	int mid;				//朋友圈id
	String mtitle;			//朋友圈标题
	String mtime;			//朋友圈发布时间
	String qid;				//朋友圈发布企业
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public String getQid() {
		return qid;
	}
	public void setQid(String qid) {
		this.qid = qid;
	}
	
	
}
