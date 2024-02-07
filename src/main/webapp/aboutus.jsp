<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/aboutus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
    
    <title>ASCR</title>
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
                <a href="#"> <button class="btn">Search</button></a>
            </div>

            <div class="dropdown1">
            <a class="icons"><div id="user-btn" class="fas fa-user"></div> </a>
            <div class="dropdown1-content">
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
    <h1 align="center">Team Members</h1>
    </div>
        <div class="topright">
    <img alt="" src="./images/team.png">
    
    </div>
    <div class="container">
        
        <div class="card__1 card-color__1">
            <div class="image">
                <img src="./images/manoj.jpeg" alt="">
            </div>  
            <div class="content">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manoj</h1>
                <h2>Team Leader</h2>
                <a href="#" class="btn">View More</a>
                <div class="social">
                    <a href="https://www.linkedin.com/in/nulu-vrushan-manoj-sai-2abb33243/" class="btn" target="_blank"><i class="fa-brands fa-linkedin fa-2x"></i></a>
                    <i class="fa-brands fa-twitter fa-2x"></i>
                    <i class="fa-brands fa-github fa-2x"></i>
                    <i class="fa-brands fa-facebook fa-2x"></i>
                </div>
            </div>
        </div>
        <div class="card__1 card-color__2">
            <div class="image">
                <img src="./images/chinnu.jpeg" alt="">
            </div>
            <div class="content">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chinnu</h1>
                <h2>Developer</h2>
                <a href="#" class="btn">View More</a>
                <div class="social">
                    <a href="https://www.linkedin.com/in/p-lakshmi-narayana-reddy-3b6658226/" class="btn" target="_blank"><i class="fa-brands fa-linkedin fa-2x"></i></a>
                    <i class="fa-brands fa-twitter fa-2x"></i>
                    <i class="fa-brands fa-github fa-2x"></i>
                    <i class="fa-brands fa-facebook fa-2x"></i>
                </div>
            </div>
        </div>
        <div class="card__1 card-color__2">
            <div class="image">
                <img src="./images/nandha.jpeg" alt="">
            </div>
            <div class="content">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nandha</h1>
                <h2>Developer</h2>
                <a href="#" class="btn">View More</a>
                <div class="social">
                    <a href="https://www.linkedin.com/in/komma-nithyanandha-reddy-041871248/" class="btn" target="_blank"><i class="fa-brands fa-linkedin fa-2x"></i></a>
                    <i class="fa-brands fa-twitter fa-2x"></i>
                    <i class="fa-brands fa-github fa-2x"></i>
                    <i class="fa-brands fa-facebook fa-2x"></i>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>