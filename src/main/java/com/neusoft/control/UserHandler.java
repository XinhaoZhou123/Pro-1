package com.neusoft.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.po.User;
import com.neusoft.service.UserService;

@Controller
public class UserHandler {
	@Autowired
	private UserService	u_serv;
	
	@RequestMapping(value="/user/log")
	@ResponseBody
	public Map<String, Object> login(String tel , String pwd, Integer qid ,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		User user = u_serv.findUserByTel(tel, qid);
		Boolean msg = false;
		if(user!=null&& pwd!=null && pwd.equals(user.getPwd())){
			msg = true;
			session.setAttribute("qid", qid);
			session.setAttribute("tel",tel);
			session.setAttribute("nickName",user.getNickName());
			session.setAttribute("uid", user.getUid());
			map.put("user", user);		
		}
		if(msg){
			session.setAttribute("isLoginOk", "true");
		}else{
			session.setAttribute("isLoginOk", "false");
		}
		map.put("msg", msg);
		return map;
	}
	@RequestMapping(value="/user/reg")
	@ResponseBody
	public Map<String, Object> reg(User user) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result=false;
		result = u_serv.addUser(user);
		if(result){
			result=true;
		}else{
			result=false;			
		}
		map.put("msg", result);
		return map;
	}
}
