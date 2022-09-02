package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.model.MyResume;
import com.example.demo.repository.ResumeRepository;

import java.util.*;

@org.springframework.stereotype.Service
public class MyResumeService {
	@Autowired
	ResumeRepository RR;
	
	public List<MyResume> GetAllData() {
		
		return RR.findAll();
		
	}

	public String updateData(MyResume m,int id) {
		
		MyResume mr=RR.findById(id).get();
		mr.setAddress(m.getAddress());
		mr.setPhoneNumber(m.getPhoneNumber());
		mr.setEmailid(m.getEmailid());
		RR.save(mr);
		return "index";
		
	}

}
