<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>ASCR</title>
    <link rel="stylesheet" href="css/courses.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
        /* Style for the modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            
        }
        
        fieldset {
      border: 1px solid #d4d4d4;
      padding: 20px 10px;
      margin-bottom: 20px;
      border-radius: 8px;
    }

        .modal-content {
            background-color: #fff;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 35%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            text-align: center;
            
        }

        /* Style for the close button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
        

    .button {
      text-align: center;
    }

    .submit {
      color: white;
      background: #ee9a25;
      padding: 9px 25px;
      margin-right: 10px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 5px #c9c9c9;
    }

    .submit:hover {
      background: #d1871e;
    }

    

    input[type="radio"] {
      margin-right: 10px;
    }
    
    h3{
    background-color: aqua;
    }
    </style>
    
    
</head>
<body>
    <div class="main">
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

    <div class="courses1">
        <h1>Available Courses for Registration</h1>
        <table>
            <thead>
                <tr>
                    <th>Course Title</th>
                    <th>Course Code</th>
                    <th>Faculty</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${courdata}"  var="stud">
		          <tr>
		            <td class="course-code"><c:out value="${stud.coursename}" /></td>
		            <td class="course-title"><c:out value="${stud.coursecode}" /></td>
		            <td class="faculty"><c:out value="${stud.faculty}" /></td>
		            <c:choose>
            <c:when test="${stud.registered}">
                <td><button class="register-button1">REGISTERED</button></td>
            </c:when>
            <c:otherwise>
                <td><a href="#" onclick="openModal('<c:out value="${stud.coursename}" />', '<c:out value="${stud.id}" />')"><button class="register-button">REGISTER</button></a></td>
            </c:otherwise>
        </c:choose>
		          </tr>         
		         </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Confirmation</h2>
        <form method="post">
        <fieldset>
        <br>
            <h3><b>Are you sure you want to Register for this <span id="courseTitle"></span>  Course</b></h3>
            <br>
            <div class="button">
                <input type="hidden" id="courseId" name="courseId">
                <button type="submit" class="submit">REGISTER</button>
            </div>
            </fieldset>
        </form>
    </div>
</div>

<script>
    // Function to open the modal with course details
    function openModal(courseTitle, courseId) {
        document.getElementById("courseTitle").textContent = courseTitle;
        document.getElementById("courseId").value = courseId;
        
        var form = document.querySelector("form");
        form.action = "register/" + courseId;
        document.getElementById("myModal").style.display = "block";
    }

    // Function to close the modal
    function closeModal() {
        document.getElementById("myModal").style.display = "none";
    }
</script>


    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>