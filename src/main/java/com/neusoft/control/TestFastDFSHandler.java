package com.neusoft.control;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.neusoft.FastDFS.FileManager;

@Controller
public class TestFastDFSHandler {
	@RequestMapping(value="test/FastDFSUpload")
		public void upload(@RequestParam MultipartFile[] upload) throws IOException{
		System.out.println(".......TestFastDFSHandler..............upload");
			for(int i=0;i<upload.length;i++){
				String filepath = FileManager.upload(upload[i].getBytes(), upload[i].getOriginalFilename());
				System.out.println(filepath);
			}
		}
}
