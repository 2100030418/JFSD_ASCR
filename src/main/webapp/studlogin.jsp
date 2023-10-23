<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Design by foolishdeveloper.com -->
    <title>Glassmorphism login Form Tutorial in html css</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" type="text/css" href="css/login.css" media="screen" />
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<div class="login_main">
    <div class="navbar">
        <div class="icon">
            <h2 class="logo">SCRS</h2>
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

        <div class="dropdown">
            <a class="icons"><div id="user-btn" class="fas fa-user"></div> </a>
            <div class="dropdown-content">
                <a href="studlogin.jsp">Student Login</a>
                <a href="login.jsp">Admin Login</a>
            </div>
        </div>
    </div>
</div>

<form method="post" action="checkstudlogin">
    <h3>Student Login</h3>

    <label for="username">ID</label>
    <input type="text" placeholder="Enter your ID" id="username" name="uname" required="required">

    <label for="password">Password</label>
    <input type="password" placeholder="Password" id="myInput" value="" name="pwd" required="required">
    <input type="checkbox" onclick="myFunction()"><h5 class="p">Show Password<h5>

    <script>
        function myFunction() {
            var x = document.getElementById("myInput");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
    
    <button class="button">Login</button>
</form>

</body>
</html>