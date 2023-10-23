package com.klef.jfsd.springboot.service;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Courses;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CoursesRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;


@Service
public class AdminServiceImpl implements AdminService
{
        @Autowired	
        private AdminRepository adminRepository;
        
        @Autowired
        private StudentRepository studentRepository;
        
        @Autowired
        private CoursesRepository coursesRepository;
        

	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		
		return adminRepository.checkadminlogin(uname, pwd);
	}


	@Override
	public List<Student> viewallstudents() {
		return studentRepository.findAll();
	}


	@Override
	public String deletestudents(int sid) {
		Optional<Student> obj =  studentRepository.findById(sid);//optional is a container of object
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Student emp = obj.get();
          
          studentRepository.delete(emp);
          
          msg = "Student Deleted Successfully";
        }
        else
        {
          msg = "Student Not Found";
        }
        
        return msg;
	}


	@Override
	public Student viewstudentbyid(int sid) {
		Optional<Student> obj =  studentRepository.findById(sid);
        
        if(obj.isPresent())
        {
          Student emp = obj.get();
          
          return emp;
        }
        else
        {
          return null;
        }
	}


	@Override
	public String addcourses(Courses courses) {
		coursesRepository.save(courses);
		return "Employee Added Successfully !!!";
		
	}


	@Override
	public List<Courses> viewcourse() {
		return coursesRepository.findAll();
	}


	@Override
	public String deletecourse(int cid) {
		
		Optional<CourseData> courseObj1=Optional.empty();
		
		
	   Optional<Courses> courseObj = coursesRepository.findById(cid);

	    if (courseObj.isPresent()) {
	        Courses course = courseObj.get();
	        
	        // Delete the course
	        coursesRepository.delete(course);

	        return "Course deleted successfully";
	    } else {
	        return "Course not found";
	    }
	}



	private int Integer(String cid) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public String updatecourses(Courses emp) {
		Courses e = coursesRepository.findById(emp.getId()).get();    
	    
	      e.setCoursename(emp.getCoursename());
	      e.setCourseid(emp.getCourseid());
	      e.setFaculty(emp.getFaculty());
	    
	    coursesRepository.save(e);
	    
	    return "Courses Updated Successfully";
	}
	
	
	
	
	

     
}
