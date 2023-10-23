<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASCR</title>
    <link rel="stylesheet" href="css/contactus.css">
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
		        <a href="">Profile</a>
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
        
        
        
        
        <div class="container">
            <h1>Contact Us</h1>
            <div class="contact-form">
                <form action="studhome.jsp" method="post">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Message:</label>
                        <textarea id="message" name="message" rows="6" required></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>