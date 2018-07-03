package com.neusoft.service;

import java.util.List;

import com.neusoft.po.Address;
import com.neusoft.po.Enterprise;
import com.neusoft.po.Teacher;

public interface EnterpriseService {
		public Enterprise selectEnterpriseInfoById(int qid) throws Exception;
		public List<Teacher> selectAllTeachers(int qid) throws Exception;
		public List<Address> selectAllAddress(int qid) throws Exception;
		//public List<Address> selectAllAddressWithFreeLessons(int qid) throws Exception;
}
