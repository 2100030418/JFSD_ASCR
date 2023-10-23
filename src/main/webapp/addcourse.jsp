<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>ASCR</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/addcourse.css" />
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
    <div class="container1">
      <h2>Course Registration</h2>
      <form action="addcourse" method="post">
        <fieldset>
          <div class="input-field1">
            <label>Course Name</label>
            <i class="fa fa-user icon1"></i>
            <input type="text" class="inputs1" name="cname">
          </div>
          <div class="input-field1">
            <label>Course Code</label>
            <i class="fa-solid fa-people-roof icon1"></i>
            <input type="text" class="inputs1" name="cid">
          </div>
          <div class="input-field1">
            <label class="city">Branch</label>
            <i class="fa fa-list icon1"></i>
            <select name="dept" id="" class="inputs1">
              <option value="0">Select Branch</option>
              <option value="CSE">CSE</option>
              <option value="ECE">ECE</option>
              <option value="EEE">EEE</option>
              <option value="MECH">MECH</option>
              <option value="CIVIL">CIVIL</option>
            </select>
          </div>
          <div class="input-field1">
            <label>Faculty</label>
            <i class="fa-solid fa-people-roof icon1"></i>
            <input type="text" class="inputs1" name="fac">
          </div>
        </fieldset>
  
        <div class="button">
          <button type="submit" class="submit">Submit</button>
          <button type="reset" class="reset">Reset</button>
        </div>
      </form>
    </div>
  </div>
</body>

</html>
