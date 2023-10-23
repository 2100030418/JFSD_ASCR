package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
	  @Query("select e from Student e where e.id=?1 and e.dateofbirth=?2 ")
      public Student checkstudlogin (int id,String dob);
}
