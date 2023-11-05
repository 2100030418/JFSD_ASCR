package com.klef.jfsd.springboot.controller;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Courses;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentCourse;
import com.klef.jfsd.springboot.repository.CoursesRepository;
import com.klef.jfsd.springboot.repository.StudentCourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CourseData;

import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.mail.Session;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	    @Autowired
		private StudentService studentService; 
	    
	    @Autowired
		private AdminService adminService; 
	    
	    @Autowired
	    private StudentCourseRepository studentCourseRepository;
		
	    @Autowired
	    private StudentRepository studentRepository;

	    @Autowired
	    private CoursesRepository coursesRepository;
	    
	    @Autowired
	    private EmailService emailService;
	    
	    
	    
	    @GetMapping("/")
	    public String main()
	    {
	    	return "studhome";
	    }
	    @GetMapping("/adminhome")
	    public String admin(HttpServletRequest request)
	    {
	    	HttpSession session = request.getSession();
            String is = (String) session.getAttribute("ename");
            
            if(is.equals("admin"))
            {
            	return "main";
            }
            
	    	return "login";
	    	
	    }
	    
	    
	    @GetMapping("aboutus")
	    public String aboutus(HttpServletRequest request)
	    {
	    	
	    	return "aboutus";
	    }
	    
	    
	    
	    
	    @GetMapping("contactus")
	    public String contactus()
	    {
	    	
	    	return "contactus";
	    }
	    @GetMapping("addcourse")
	    public String addcourse1(HttpServletRequest request)
	    {
	    	HttpSession session = request.getSession();
            String is = (String) session.getAttribute("ename");
            
            if(is != null &&is.equals("admin"))
            {
            	return "addcourse";
            }
            
	    	return "login";
	    	
	    }
	    @GetMapping("studhome")
	    public String studhome()
	    {
	    	
	    	return "studhome";
	    }
	    
	    @GetMapping("studlogin")
	    public String studlogin()
	    {
	    	
	    	return "studlogin";
	    }
	    @GetMapping("login")
	    public String login()
	    {
	    	
	    	return "login";
	    }
	    @GetMapping("addstudent")
	    public String addstudent(HttpServletRequest request)
	    {
	    	HttpSession session = request.getSession();
            String is = (String) session.getAttribute("ename");
            
            if(is != null &&is.equals("admin"))
            {
            	return "addstudent";
            }
            
	    	return "login";
	    }
	    
	    @GetMapping("logout")
	    public String logout(HttpServletRequest request)
	    {
	    	HttpSession session  = request.getSession();
	    	session.removeAttribute("eid");
	    	session.removeAttribute("ename");
	    	return "login";
	    }
	    
	   
	    
	    @GetMapping("adminlogin")
	    public ModelAndView adminlogin()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("adminlogin");
	      return mv;
	    }
	    
	    @PostMapping("checkadminlogin")
	    public ModelAndView checkadminlogin(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	
	    	String uname = request.getParameter("uname");
	    	String pwd = request.getParameter("pwd");
	    	
	    Admin a = adminService.checkadminlogin(uname, pwd);
	    
	    if(a != null)
	    	
	    {
	    	HttpSession session  = request.getSession();
        	
        	session.setAttribute("ename", a.getUsername());
	    	
	    	
	    	mv.setViewName(admin(request));
	    }
	    else
	    {
	    	mv.setViewName("login");
	    	mv.addObject("message", "Login Failed");
	    }
	    return mv;
	    
	    }
	    
	    @PostMapping("addstudent")
	    public ModelAndView addstud(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	
	    	String msg = null;
	    	
	    	try 
	    	{
	    		String name = request.getParameter("name");
	    		String gender = request.getParameter("gender");
	    		String dob = request.getParameter("dob");
	    		String dept = request.getParameter("dept");
	    		String faname = request.getParameter("faname");
	    		String email = request.getParameter("email");
	    		String add = request.getParameter("address");
	    		String pin = request.getParameter("pin");
	    		String city = request.getParameter("city");
	    		String contact = request.getParameter("contact");
	    		
	    		Student emp = new Student();
	    		
	    		emp.setName(name);
	    		emp.setGender(gender);
	    		emp.setDateofbirth(dob);
	    		emp.setDepartment(dept);
	    		emp.setFaname(faname);
	    		emp.setEmail(email);
	    		emp.setAddress(add);
	    		emp.setCity(city);
	    		emp.setPin(pin);
	    		emp.setContact(contact);
	    		emp.setActive(true);
	    		
	    	
	    	
	    		msg = 	studentService.addstudent(emp);
	    		String filePath = "C:/Users/91996/Desktop/FRONTEND/invite.html";
	    		
	  		  try {
	  			  
	  			  String from="plakshminarayanareddy2003@gmail.com";
	  	            String to = email;
	  	            String subject = "Welcome to ASCR !!!";
	  	            String text = "This is the email body with an attachment.";
	  	            String htmlContent = new String(Files.readAllBytes(Paths.get(filePath)));
	  	          htmlContent = htmlContent.replace("[name]", name);
	  	        htmlContent = htmlContent.replace("[password]", dob);
	  	            
	  	            

	  	            emailService.sendEmail(from, to, subject, text,htmlContent);
	  	            //return "Email sent with attachment.";
	  	        } catch (Exception e) {
	  	            System.out.println(e);
	  	        }
	    	    
	        
	    	mv.setViewName("addstudent");
	    	mv.addObject("message", msg);
	    	
	    	}
	    	catch (Exception e) 
	    	{
				 msg = e.getMessage();
				 
				 mv.setViewName("main");
				 mv.addObject("message", msg);
				 System.out.println(msg);
			}
	    	
	    	return mv;
	    }
	    
	    
	    @PostMapping("checkstudlogin")
	    public ModelAndView checkstudlogin(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      String sid = request.getParameter("uname");
	      int id=Integer.valueOf(sid);
	      String dob = request.getParameter("pwd");
	      
	        Student emp = studentService.checkstudlogin(id, dob);
	        
	        if(emp!=null)
	        {
	        	// session
	        	
	        	HttpSession session  = request.getSession();
	        	
	        	session.setAttribute("eid", emp.getId());// eid is a session variable
	        	session.setAttribute("ename", emp.getName()); // ename is a session variable
	        	
	        	// session
	          
	          mv.setViewName("studhome");
	        }
	        else
	        {
	          mv.setViewName("login");
	          mv.addObject("message", "Login Failed");
	        }
	        
	        return mv;
	    }
	    
	    @GetMapping("viewstudent")
	    public ModelAndView viewstudent(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	ModelAndView mv1 = new ModelAndView();
	    	mv1.setViewName(login());
	    	HttpSession session = request.getSession();
            String is = (String) session.getAttribute("ename");
            
            
            if(is != null && is.equals("admin"))
            {
            	mv.setViewName("viewstudent");
    	    	
    	    	List<Student> studlist = adminService.viewallstudents();
    	    	
    	    	mv.addObject("studdata", studlist);
            }
            else
            {
            	return mv1;
            }
	    	
	    	
	    	return mv;
	    }
	    
	    @GetMapping( "viewcourse")
	    public ModelAndView viewcourse(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	ModelAndView mv1 = new ModelAndView();
	    	mv1.setViewName(login());
	    	HttpSession session = request.getSession();
            String is = (String) session.getAttribute("ename");
            
            if(is != null && is.equals("admin"))
            {
            	mv.setViewName("viewcourse");
    	    	
    	    	List<Courses> courlist = adminService.viewcourse();
    	    	
    	    	
    	    	
    	    	mv.addObject("courdata", courlist);
            }
            else
            {
            	return mv1;
            }
	    	
	    	    	
	    	
	    	return mv;
	    }
	    
	    @GetMapping("courses")
	    public ModelAndView courses(HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView();
	        HttpSession session = request.getSession();

	        // Check if the "eid" attribute is set in the session and is not null
	        Integer studentId = (Integer) session.getAttribute("eid");

	        // Retrieve all available courses
	        List<Courses> allCourses = coursesRepository.findAll();
	        List<CourseData> courseDataList = new ArrayList<>();

	        if (studentId != null) {
	            // If "eid" is set, retrieve registered courses for the student
	            List<StudentCourse> registeredCourses = studentCourseRepository.findByStudentId((long) studentId);

	            for (Courses course : allCourses) {
	                boolean isRegistered = false;

	                for (StudentCourse registeredCourse : registeredCourses) {
	                    if (registeredCourse.getCourses().getId() == course.getId()) {
	                        isRegistered = true;
	                        break;
	                    }
	                }

	                CourseData courseData = new CourseData(course.getId(), course.getCoursename(),course.getCourseid(), course.getFaculty(), isRegistered);
	                courseDataList.add(courseData);
	            }
	        } else {
	            // If "eid" is not set (no session), create CourseData objects for all courses
	            for (Courses course : allCourses) {
	            	
	            	
	            	
	                CourseData courseData = new CourseData(course.getId(), course.getCoursename(),course.getCourseid(), course.getFaculty(), false);
	                courseDataList.add(courseData);
	            }
	        }

	        mv.addObject("courdata", courseDataList);
	        mv.setViewName("courses"); // Set the view name here

	        return mv;
	    }



	    
	    @GetMapping("deletestud")
	    public ModelAndView deletestud()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("deletestud");
	      
	      List<Student> studlist =  adminService.viewallstudents();
	      
	      mv.addObject("studdata", studlist);
	      
	      return mv;
	    }
	    
	    @GetMapping("delete/{id}")
	    public String deleteaction(@PathVariable("id") int sid)
	    {
	      adminService.deletestudents(sid);
	      return "redirect:/viewstudent";
	    }
	    
	    
	    @GetMapping("deletecourse/{courseId}")
	    public String deletecourse(@PathVariable("courseId") int courseId) {
	    	studentService.deleteByStudentId(courseId);
		    adminService.deletecourse(courseId);
	        return "redirect:/viewcourse";
	    }

	    
	    
	    @GetMapping("view")
	    public ModelAndView viewstuddemo(@RequestParam("id") int sid)
	    {
	      Student emp = adminService.viewstudentbyid(sid);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("viewstudbyid");
	      mv.addObject("emp", emp);
	      return mv;
	    }
	    
	    
	    @PostMapping("addcourse")
	    public ModelAndView addcourse(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	
	    	
	    	String msg = null;
	    	
	    	try 
	    	{
	    		String name = request.getParameter("cname");
	    		String gender = request.getParameter("cid");
	    		String dob = request.getParameter("fac");
	    		String dep = request.getParameter("dept");
	    		
	    		Courses emp = new Courses();
	    		
	    		emp.setCoursename(name);
	    		emp.setCourseid(gender);
	    		emp.setFaculty(dob);
	    		emp.setCoursedept(dep);
	    		
	    		msg = 	adminService.addcourses(emp);
	    	
	    	mv.setViewName(main());
	    	mv.addObject("message", msg);
	    	
	    	}
	    	catch (Exception e) 
	    	{
				 msg = e.getMessage();
				 
				 mv.setViewName("main");
				 mv.addObject("message", msg);
				 System.out.println(msg);
			}
	    	
	    	return mv;
	    }
	    
	    
	    
	    
	    @PostMapping("register/{courseId}")
	    public ModelAndView registerForCourse(
	        @PathVariable int courseId,
	        HttpServletRequest request
	    ) {
	        ModelAndView mv = new ModelAndView();
	        ModelAndView mv1 = new ModelAndView();
	        mv.setViewName("redirect:/courses");
	        mv1.setViewName("redirect:/studlogin");

	        try {
	            HttpSession session = request.getSession();
	            int id = (int) session.getAttribute("eid");
	            studentService.registerForCourse(id, courseId);
	        } catch (Exception e) {
	            System.out.println(e);
	            return mv1;
	        }

	        // Redirect to the GET method for "courses"
	        return mv;
	    }

	    
	    @PostMapping("update_course")
	    public String updatecourse(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      
	      
	     try
	     {
	    	 String name = request.getParameter("cname");
	    		String gender = request.getParameter("cid");
	    		String dob = request.getParameter("fac");
	    		String id=request.getParameter("courseId");
	    		
	    		Courses emp = new Courses();
	    		try {
	    		    Integer courseId = Integer.parseInt(id);
	    		    // Now, courseId is an integer.
	    		    emp.setId(courseId);
	    		    
	    		} catch (NumberFormatException e) {
	    		    System.out.println(e);
	    		}
	    		
	    		emp.setCoursename(name);
	    		emp.setCourseid(gender);
	    		emp.setFaculty(dob);
	    		
	    		msg = 	adminService.updatecourses(emp);
	    	
	    		return "redirect:/viewcourse";
	    	
	       
	     }
	     catch(Exception e)
	     {
	       msg = e.getMessage();
	       
	       mv.setViewName(main());
	       System.out.println(e);
	       
	     }
	      
	     
	     return "redirect:/viewcourse";

	    }
	    
	    
	    
	    

}
