package com.klef.jfsd.springboot.service;

import java.util.*;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Courses;
import com.klef.jfsd.springboot.service.*;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentCourse;
import com.klef.jfsd.springboot.repository.CoursesRepository;
import com.klef.jfsd.springboot.repository.StudentCourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
    private StudentRepository studentRepository;
	
	@Autowired
	private CoursesRepository coursesRepository;
	
	@Autowired
    private StudentCourseRepository studentCourseRepository;
	
	
	@Override
	public String addstudent(Student student) {
		studentRepository.save(student);
		return "Employee Added Successfully !!!";
	}

	@Override
	public Student checkstudlogin(int id, String dob) {
		
		return studentRepository.checkstudlogin(id, dob);
	}

	@Override
	public boolean registerForCourse(int studentId, int courseId) {
	    Student student = studentRepository.findById(studentId).orElse(null);
	    Courses courses = coursesRepository.findById(courseId).orElse(null);

	    try {
	        if (student == null || courses == null) {
	            return false; // Registration failed
	        }
	        boolean isRegistered = studentCourseRepository.existsByStudentAndCourses(student, courses);

	        if (isRegistered) {
	            return false; // Already registered
	        }

	        StudentCourse registration = new StudentCourse();
	        registration.setStudent(student);
	        registration.setCourses(courses);

	        studentCourseRepository.save(registration);
	    } catch (Exception e) {
	        System.out.println(e);
	        return false; // An error occurred during registration
	    }

	    return true; // Registration successful
	}
	
	public List<StudentCourse> findRegisteredCoursesByStudentId(int studentId) {
        return studentCourseRepository.findByStudentId((long) studentId);
    }
	public void deleteByStudentId(int studentId) {
	    studentCourseRepository.deleteByStudentId((long) studentId);
	}


	/*@Override
	public List<CourseData> getCourseDataForStudent(int studentId) {
	    List<Courses> allCourses = coursesRepository.findAll(); // Retrieve all available courses
	    List<StudentCourse> registeredCourses = studentCourseRepository.findByStudentId((long) studentId);

	    List<CourseData> courseDataList = new ArrayList<>();

	    for (Courses course : allCourses) {
	        boolean isRegistered = false;

	        for (StudentCourse registeredCourse : registeredCourses) {
	            if (registeredCourse.getCourses().getId() == course.getId()) {
	                isRegistered = true;
	                break;
	            }
	        }

	        CourseData courseData = new CourseData(course.getId(), course.getCoursename(), course.getFaculty(), isRegistered);
	        courseDataList.add(courseData);
	    }

	    return courseDataList;
	*/}	






