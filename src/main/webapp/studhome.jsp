<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="css/studhome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="icon">
                <a href="main.html"><h2 class="logo">SCRS</h2></a>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="studhome">HOME</a></li>
                    <li><a href="courses">COURSES</a></li>
                    <li><a href="contactus">CONTACTUS</a></li>
                    <li><a href="aboutus">ABOUTUS</a></li>
                </ul>
            </div>

            <div class="search">
                <input class="srch" type="search" name="" placeholder="Type To text">
                <a href="#"><button class="btn">Search</button></a>
            </div>
			<div class="dropdown">
            <a class="icons"><div id="user-btn" class="fas fa-user"></div> </a>
            <div class="dropdown-content">
                <c:choose>
		        <c:when test="${not empty ename}">
		        <a href="studentprofile.jsp">Profile</a>
		            <a href="logout">Logout</a>
		        </c:when>
		        <c:otherwise>
		            <a href="studlogin.jsp">Student Login</a>
		            <a href="login.jsp">Admin Login</a>
		        </c:otherwise>
		    	</c:choose>
            </div>
        </div>
            
        </div>
        <div class="topright">
    <img alt="" src="../images/home.png">
    
    </div>
        <div class="content">
        <h1>Welcome, ${ename } </h1>
        <h1>Academic Student<br><span>Course Registration</span> <br>System</h1>
        <p class="par">The Academic Student Course Registration System is a web-based application designed to streamline the process of course registration for students in an academic institution. It serves as a centralized platform where students can view available courses, select their preferred courses, and register for the upcoming semester.</p>

        <button class="cn"><a href="#">GET STARTED</a></button>
    </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>