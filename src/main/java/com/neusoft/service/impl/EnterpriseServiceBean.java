package com.neusoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.EnterpriseMapper;
import com.neusoft.po.Address;
import com.neusoft.po.Enterprise;
import com.neusoft.po.Teacher;
import com.neusoft.service.EnterpriseService;

@Service
public class EnterpriseServiceBean implements EnterpriseService {
	
	@Autowired
	private EnterpriseMapper enterpriseMapper;

	@Override
	public Enterprise selectEnterpriseInfoById(int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teacher> selectAllTeachers(int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Address> selectAllAddress(int qid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
