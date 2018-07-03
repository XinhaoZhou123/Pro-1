package com.neusoft.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.po.Address;

import com.neusoft.service.EnterpriseService;

@Controller
public class EnterpriseHandle {
		@Autowired
		private EnterpriseService enterpriseService;
		
		@RequestMapping(value="/enterprise/getAllAddress")
		@ResponseBody
		public List<Address> getAllAddress() throws Exception{
			System.out.println("........EnterpriseHandle.........getAllAddress().....");
			return null;
		}
}
