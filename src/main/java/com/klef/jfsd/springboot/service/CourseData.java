package com.klef.jfsd.springboot.service;

public class CourseData {
    private Long sid;          // Course ID
    
    private String coursename; // Course name
    private String coursecode;
    private String faculty;    // Faculty
    private boolean isRegistered; // Whether the course is registered for the student

    // Constructors
    public CourseData(int sid, String coursename,String coursecode, String faculty, boolean isRegistered) {
        this.sid = (long) sid;
        
        this.coursename = coursename;
        this.coursecode=coursecode;
        this.faculty = faculty;
        this.isRegistered = isRegistered;
    }

    // Getters and setters
    public Long getId() {
        return sid;
    }

    public void setId(Long id) {
        this.sid = sid;
    }

    public String getcoursename() {
        return coursename;
    }

    public String getCoursecode() {
		return coursecode;
	}

	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}

	public void setcoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public boolean isRegistered() {
        return isRegistered;
    }

    public void setRegistered(boolean registered) {
        isRegistered = registered;
    }
}

