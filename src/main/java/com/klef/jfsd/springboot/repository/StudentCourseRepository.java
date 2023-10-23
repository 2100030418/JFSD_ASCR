package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Courses;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentCourse;

import jakarta.transaction.Transactional;

@Repository
public interface StudentCourseRepository extends JpaRepository<StudentCourse, Long> {
    // You can add custom query methods here if needed
	 boolean existsByStudentAndCourses(Student student, Courses courses);

	List<StudentCourse> findByStudentId(long studentId);

	@Modifying
    @Transactional
    @Query("DELETE FROM StudentCourse sc WHERE sc.courses.id = :studentId")  // Change the parameter name to match :studentId
    void deleteByStudentId(Long studentId);
	
	
	
	
}
