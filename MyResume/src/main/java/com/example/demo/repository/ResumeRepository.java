package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.MyResume;

public interface ResumeRepository extends JpaRepository<MyResume, Integer> {
	
	
}
