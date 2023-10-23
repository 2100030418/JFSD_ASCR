<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <title>Student Registration Form 2</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/viewcourse.css" />
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
        
        
        fieldset {
      border: 1px solid #d4d4d4;
      padding: 20px 10px;
      margin-bottom: 20px;
      border-radius: 8px;
    }

    .input-field1 {
      display: flex;
      margin-bottom: 15px;
    }

    label {
      margin-right: 25px;
      margin-top: 5px;
      width: 30%;
      text-align: right;
      font-weight: bold;
    }

    .icon1 {
      background: #fcfcfa;
      color: black;
      min-width: 40px;
      border: 2px solid #e2e2e2;
      border-right: none;
      text-align: center;
      padding: 7px;
    }

    .inputs1 {
      padding: 3px 10px;
      border: 2px solid #e2e2e2;
      width: 70%;
      background-color: LightGray;
    }
    .inputs2 {
      padding: 3px 10px;
      border: 2px solid #e2e2e2;
      width: 70%;
      
    }

    input [type="radio"] {
      margin-right: 8px;
    }

    .textarea1 {
      padding: 8px;
      border: 2px solid #e2e2e2;
    }

    .textarea-icon1 {
      padding-top: 14px;
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

    .reset {
      color: white;
      background: #c93232;
      padding: 9px 25px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 5px #c9c9c9;
    }

    .reset:hover {
      background: #a32727;
    }

    .city {
      margin-left: -6px;
    }

    .gender {
      margin-left: -30px;
    }

    .courses {
      margin-left: -26px;
    }

    input[type="radio"] {
      margin-right: 10px;
    }
    </style>
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
                <a href="studhome.jsp">Logout</a>
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
                    <c:forEach items="${courdata}" var="stud">
                        <tr>
                            <td class="course-code"><c:out value="${stud.coursename}" /></td>
                            <td class="course-title"><c:out value="${stud.courseid}" /></td>
                            <td class="faculty"><c:out value="${stud.faculty}" /></td>
                            <td>
                                <a href="#" onclick="openModal('<c:out value="${stud.coursename}" />', '<c:out value="${stud.courseid}" />', '<c:out value="${stud.faculty}" />', '<c:out value="${stud.id}" />')">
        <button class="update-button">UPDATE</button>
    </a>
                                
                                <a href="deletecourse/${stud.id}"><button class="register-button">DELETE</button></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal -->
    <!-- Modal -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Update Course</h2>
        <form action="update_course" method="post">
            <fieldset>
                <div class="input-field1">
                    <label for="courseTitle">Course Name</label>
                    <i class="fa fa-user icon1"></i>
                    <input type="text" class="inputs1" name="cname" id="courseTitle" required readonly="readonly">
                </div>
                <div class="input-field1">
                    <label for="courseCode">Course Code</label>
                    <i class="fa-solid fa-people-roof icon1"></i>
                    <input type="text" class="inputs1" name="cid" id="courseCode" required readonly="readonly">
                </div>
                <div class="input-field1">
                    <label for="faculty">Faculty</label>
                    <i class="fa-solid fa-people-roof icon1"></i>
                    <input type="text" class="inputs2" name="fac" id="faculty" required>
                </div>
            </fieldset>
            <div class="button">
            <input type="hidden" id="courseId" name="courseId">
            
                <button type="submit" class="submit">UPDATE</button>
                
            </div>
        </form>
    </div>
</div>


    <script>
        // Function to open the modal with course details
        function openModal(courseTitle, courseCode, faculty,courseId) {
            document.getElementById("courseTitle").value = courseTitle;
            document.getElementById("courseCode").value = courseCode;
            document.getElementById("faculty").value = faculty;
            document.getElementById("courseId").value = courseId;
            document.getElementById("myModal").style.display = "block";
        }

        // Function to close the modal
        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }
    </script>
    
    
    
    
</body>

</html>
