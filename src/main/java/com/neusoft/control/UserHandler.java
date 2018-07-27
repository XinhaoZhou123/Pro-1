package com.neusoft.control;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.netease.code.SendCode;
import com.neusoft.po.User;
import com.neusoft.service.UserService;
import com.neusoft.vo.VerifyInfo;

@Controller
public class UserHandler {
	@Autowired
	private UserService	u_serv;
	
	@RequestMapping(value = "/user/sendCode")
	@ResponseBody
	public VerifyInfo sendCode(String tel) throws Exception{
		Gson gson = new Gson();
		VerifyInfo info = gson.fromJson(SendCode.execute(tel), new TypeToken<VerifyInfo>(){}.getType());
		//正确的返回：{"code":200,"msg":101,"obj":XXXXXX}
		return info;
	}
	@RequestMapping(value = "/user/verifyLog")
	@ResponseBody
	public Map<String,Object> verifyLog(String tel, Integer qid ,HttpServletRequest request) throws Exception{
		Map<String ,Object> map = new HashMap<String, Object>();
		HttpSession session = request.getSession();
		boolean msg = false;
		
		User user = u_serv.findUserByTel(tel, qid);
		if(user!=null){
			msg = true;
			session.setAttribute("qid", qid);
			session.setAttribute("tel",tel);
			session.setAttribute("nickName",user.getNickName());
			session.setAttribute("uid", user.getUid());
			map.put("user", user);		
		}else{
			//用户不存在，注册一个
			User newU = new User();
			newU.setQid(qid);
			newU.setTel(tel);
			newU.setNickName(tel);
			u_serv.addUser(newU);
			newU = u_serv.findUserByTel(tel, qid);
			msg = true;
			session.setAttribute("qid", qid);
			session.setAttribute("tel",tel);
			session.setAttribute("nickName",newU.getNickName());
			session.setAttribute("uid", newU.getUid());
			map.put("user", newU);
		}
		if(msg){
			session.setAttribute("isLoginOk", "true");
		}else{
			session.setAttribute("isLoginOk", "false");
		}
		map.put("msg", msg);
		return map;
	}
	
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
	@RequestMapping(value="/user/uploadIcon")
	@ResponseBody
	public Map<String, Object> upload(HttpServletRequest request,MultipartFile img){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result=false;
		HttpSession session = request.getSession();
		int qid = (Integer)session.getAttribute("qid");
		String tel = (String)session.getAttribute("tel");
		
		String filename = System.currentTimeMillis()+img.getOriginalFilename();
		String path = request.getServletContext().getRealPath("/");
		File f = new File(path);
		String ppath = f.getParent();
		File dest = new File(ppath+"/img",filename);
		try {
			img.transferTo(dest);
			result = u_serv.updateIcon(tel, qid, filename);
			map.put("iconUrl", filename);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		map.put("msg", result);
		return map;
	}
	@RequestMapping(value = "/user/logout")
	@ResponseBody
	public void logout(HttpSession session) throws Exception{
		session.invalidate();
		
	}
}
