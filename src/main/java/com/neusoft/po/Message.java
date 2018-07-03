package com.neusoft.po;

import java.util.List;

//朋友圈
public class Message {
	private int mid;				//朋友圈id
	private String mtitle;			//朋友圈标题
	private String mtime;			//朋友圈发布时间
	private String qid;				//朋友圈发布企业
	private List<MessageImg> messageimgs; //朋友圈图片
	private List<MessageLike> messagelikes; //朋友圈点赞;
	private List<MessageReply> messagereplys;//朋友圈回复;
	//private Enterprise enterprise;
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
	public List<MessageImg> getMessageimgs() {
		return messageimgs;
	}
	public void setMessageimgs(List<MessageImg> messageimgs) {
		this.messageimgs = messageimgs;
	}
	public List<MessageLike> getMessagelikes() {
		return messagelikes;
	}
	public void setMessagelikes(List<MessageLike> messagelikes) {
		this.messagelikes = messagelikes;
	}
	public List<MessageReply> getMessagereplys() {
		return messagereplys;
	}
	public void setMessagereplys(List<MessageReply> messagereplys) {
		this.messagereplys = messagereplys;
	}
	
	
}
