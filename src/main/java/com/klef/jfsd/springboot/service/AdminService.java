package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Courses;

import com.klef.jfsd.springboot.model.Student;


public interface AdminService 
{
     public Admin checkadminlogin(String uname,String pwd);
     public List<Student> viewallstudents(); 
     public List<Courses> viewcourse(); 
     public String deletestudents(int sid);
     public String deletecourse(int sid);
     public Student viewstudentbyid(int sid);
     public String addcourses(Courses courses);
     public String updatecourses(Courses emp);
	
}
