package com.netease.code;


/**
 * @author Administrator
 * 
 *  发送手机验证码
 *
 */
public class CheckMsg {
    public static void main(String[] args) {
        String mobileNumber = "130******1";//手机号码
        String code = "9034";//验证码
        try {
            String str = MobileMessageCheck.checkMsg(mobileNumber, code);
            if("success".equals(str)){
                System.out.println("验证成功！");
            }else{
                System.out.println("验证失败！");
            }


        } catch (Exception e) {
             e.printStackTrace();
        }
    }
}