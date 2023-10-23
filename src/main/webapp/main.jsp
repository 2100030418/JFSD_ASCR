<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
</head>
<body>

<div class="main">
    <div class="navbar">
        <div class="icon">
            <h2 class="logo">ASCR</h2>
        </div>

        <div class="menu">
            <ul>
                <li><a href="/">HOME</a></li>
                <li><a href="viewcourse">VIEW&nbsp;COURSES</a></li>
                <li><a href="viewstudent">VIEW&nbsp;STUDENT</a></li>
                <li><a href="addstudent">ADD&nbsp;STUDENT</a></li>
                <li><a href="addcourse">ADD&nbsp;COURSE</a></li> 
                
            </ul>
        </div>

        
        <div class="dropdown">
            <a class="icons2"><div id="user-btn" class="fas fa-user"></div> </a>
            <div class="dropdown-content">
                <a href="studlogin.jsp">Student Login</a>
                <a href="login.jsp">Admin Login</a>
            </div>
        </div>
    </div>
    <div class="topright">
    <img alt="" src="../images/home.png">
    
    </div>
    <div class="content">
        <h1>Academic Student<br><span>Course Registration</span> <br>System</h1>
        <p class="par">The Academic Student Course Registration System is a web-based application designed to streamline the process of course registration for students in an academic institution. It serves as a centralized platform where students can view available courses, select their preferred courses, and register for the upcoming semester.</p>

        <button class="cn"><a href="#">Get Started</a></button>
    </div>
</div>
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>
