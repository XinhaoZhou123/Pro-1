package com.neusoft.vo;

public class AddressVo {
	private String branchname;
	private String radioID;
	private int choosed;
	
	
	public int getChoosed() {
		return choosed;
	}
	public void setChoosed(int choosed) {
		this.choosed = choosed;
	}
	public String getBranchname() {
		return branchname;
	}
	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}

	

	public String getRadioID() {
		return radioID;
	}
	public void setRadioID(String radioID) {
		this.radioID = radioID;
	}
	public AddressVo(String branchname,String radioID,int choosed) {
		this.branchname=branchname;
		this.radioID=radioID;
		this.choosed=choosed;
	}
}
