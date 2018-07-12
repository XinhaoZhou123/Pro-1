package com.neusoft.service;

import com.neusoft.po.User;

public interface UserService {
	
	public boolean addUser(User user) throws Exception;
	
	public User findUserByTel(String tel , int qid) throws Exception;
	
}
