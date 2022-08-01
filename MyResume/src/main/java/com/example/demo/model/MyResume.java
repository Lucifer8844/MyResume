package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Data
@Table(name="MyResume")
public class MyResume {
	String Name;
	@Id
	Integer Id;
	String Emailid;
	String Education;
	Long PhoneNumber;
	String Skills;
	String Hobies;
	String Projects;
	Integer Age;
	String About;
	String Address;
	
}
