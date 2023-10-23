package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "course_table")
public class Courses 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cour_id")
	private int id;
	@Column(nullable = false,unique = true)
	private String coursename;
	@Column(nullable = false,unique = true)
	private String courseid;
	@Column(nullable = false,unique = true)
	private String coursedept;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	@Column(nullable = false)
	private String faculty;
	@Column(name="emp_active",nullable=false)
	private boolean active; // true or false
	
	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getCoursedept() {
		return coursedept;
	}

	public void setCoursedept(String coursedept) {
		this.coursedept = coursedept;
	}
	
	@Override
	public String toString() {
		return "Courses [id=" + id + ", coursename=" + coursename + ", courseid=" + courseid + ", coursedept="
				+ coursedept + ", faculty=" + faculty + ", active=" + active + "]";
	}
}
