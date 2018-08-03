package com.neusoft.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.neusoft.FastDFS.FileManager;

@Controller


public class FWBHandler {
	@RequestMapping(value="/ueditor/uploadImage")
	@ResponseBody
	 public String uploadImage(@RequestParam MultipartFile[] upfile, HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("......FWBHandler.......uploadImage()....");
		String[] filename =  new String[upfile.length];
		Map<String ,Object> result  = new HashMap<String,Object>();	
		result.put("state", "SUCCESS");
		for(int i=0;i<upfile.length;i++){
				filename[i] = FileManager.upload(upfile[i].getBytes(), upfile[i].getOriginalFilename());
				if(filename[i]==null){
					result.put("state", "FAIL");
					break;
				}				
		}		
		result.put("url", filename);	
		String jsonString = JSONArray.toJSONString(result);		
		return jsonString;		
	}
}
