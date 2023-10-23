<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>

<head>
  <title>Student Registration Form 2</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/viewstudent.css" />
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
      <h1>Students Data</h1>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>BRANCH</th>
            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Action</th>
          </tr>
        </thead>
        <tbody>
         <c:forEach items="${studdata}"  var="stud">
          <tr>
            <td class="course-code"><c:out value="${stud.id}" /></td>
            <td class="course-title"><c:out value="${stud.name}" /></td>
            <td class="faculty"><c:out value="${stud.department}" /></td>
            <td><a href= ""><button class="register-button">VIEW</button></a>&nbsp;<a href= "delete/${stud.id}"><button class="register-button">REMOVE</button></td></a>
            
          </tr>         
         </c:forEach> 
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
