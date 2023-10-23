package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentCourse;

public interface StudentService 
{
	
	
	 public Student checkstudlogin(int id,String dob);
     public String addstudent(Student student);
     public boolean registerForCourse(int studentId, int courseId) ;
     //public List<CourseData> getCourseDataForStudent(int studentId);
     public void deleteByStudentId(int studentId);
     public List<StudentCourse> findRegisteredCoursesByStudentId(int studentId);
}
