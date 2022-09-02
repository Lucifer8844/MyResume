package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Service.MyResumeService;
import com.example.demo.model.MyResume;
import java.util.*;


@org.springframework.stereotype.Controller



public class Controller {
	@Autowired
	MyResumeService s=new MyResumeService();//creating service class object
	@GetMapping("/home")
	
	
	public String GetData(Model M) {
		List<MyResume> obj=s.GetAllData();
		System.out.println("Server Is Running");
		M.addAttribute("data",obj);
		return "index";
		
	}
	
	@GetMapping("/edit")
	
	public String getEdit() {
		return "edit";
	}
@RequestMapping("/process")
	
	public String setData(@RequestParam("Phone") Long p,@RequestParam("Address") String a,@RequestParam("email") String e,@RequestParam("id") int i) {
	MyResume res=new MyResume();
	
	res.setAddress(a);
	res.setPhoneNumber(p);
	res.setEmailid(e);
	//res.setId(i);
	
		
		 s.updateData(res, i);
		 return "edit";
	}
	
	
}
