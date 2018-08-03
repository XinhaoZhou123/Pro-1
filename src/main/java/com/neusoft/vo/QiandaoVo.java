package com.neusoft.vo;

public class QiandaoVo {
	//每天签到的基本积分
	private static int DAY_INT=5;
	//连续七天前的积分
	private static int SEVEN_INT=20;
	//补签所需要的积分
	private static int BU_QIAN = 80;
	
	
	public static int getBU_QIAN() {
		return BU_QIAN;
	}
	public static void setBU_QIAN(int bU_QIAN) {
		BU_QIAN = bU_QIAN;
	}
	public static int getDAY_INT() {
		return DAY_INT;
	}
	public static void setDAY_INT(int dAY_INT) {
		DAY_INT = dAY_INT;
	}
	public static int getSEVEN_INT() {
		return SEVEN_INT;
	}
	public static void setSEVEN_INT(int sEVEN_INT) {
		SEVEN_INT = sEVEN_INT;
	}
	
}
