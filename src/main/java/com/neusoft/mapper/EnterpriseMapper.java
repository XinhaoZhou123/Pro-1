package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.Address;
import com.neusoft.po.Enterprise;
import com.neusoft.po.Teacher;

public interface EnterpriseMapper {
		public Enterprise getEnterpriseById(int qid) throws Exception;
		public List<Teacher> getAllTeachers(int qid) throws Exception;
		public List<Address> getAllAddresses(int qid) throws Exception;
		//public List<Address> getAllAddressWithFreeLessons() throws Exception;
}
