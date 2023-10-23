<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="css/studhome.css">
    <link rel="stylesheet" href="css/viewstudentprofile.css">
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
		        <a href="studentviewprofile.jsp">Profile</a>
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
    <div class ="heading">
    <center><h1><b>View Student Details</b></h1></center>
    </div>
        <div class="main-body">
            <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                    <div class="card3">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                <div class="mt-3">
                                    <h4>Master</h4>
                                    <p class="text-secondary mb-1">${stud.department}</p>
                                    <p class="text-muted font-size-sm">Student</p>
                                    <b></b>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <ul class="list-group list-group-flush"></ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Full Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                   ${stud.name}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Email</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <a href="/cdn-cgi/l/email-protection" class="cf_email" data-cfemail="02646b72426877696f776a2c636e">${stud.email}</a>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Phone</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${stud.contact}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Gender</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${stud.gender}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Address</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${stud.address}
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br><br><br>
            <a href= "#"><button class="register-button">VIEW COURSES</button></a>
            <a href= "updateprofile"><button class="register-button1">UPDATE PROFILE</button></a>
            </div>
    </div>
    
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>