<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>ASCR</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/addstudent.css" />
</head>

<body>
  <div class="main">
    <div class="navbar">
      <div class="icon">
        <h2 class="logo">ASCR</h2>
      </div>

      <div class="menu">
        <ul>
          <li><a href="adminhome">HOME</a></li>
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
                <a href="logout">Logout</a>
            </div>
        </div>
    </div> 
      
    <div class="container1">
      <h2>Student Registration</h2>
      <form action="addstudent" method="post">
        <fieldset>
          <div class="input-field1">
            <label>Name</label>
            <i class="fa fa-user icon1"></i>
            <input type="text" class="inputs1" name="name" required="required">
          </div>
          <div class="input-field1">
            <label>Father's name</label>
            <i class="fa-solid fa-people-roof icon1"></i>
            <input type="text" class="inputs1" name="faname" required="required">
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
            <label>Email</label>
            <i class="fa fa-envelope icon1"></i>
            <input type="email" class="inputs1" name="email" required="required">
          </div>
          <div class="input-field1">
            <label class="gender" required="required">Gender</label>
            <input type="radio" name="gender" value="male" >Male
            <input type="radio" name="gender" value="female"> Female
          </div>
          <div class="input-field1">
            <label>Date of Birth</label>
            <i class="fa fa-eye-slash icon1"></i>
            <input type="date" class="inputs1" name="dob" required="required">
          </div>
        </fieldset>  

        <fieldset>
          <div class="input-field1">
            <label class="message">Address</label>
            <i class="fa-solid fa-address-book icon1 textarea-icon1"></i>
            <textarea class="textarea1" name="address" required="required"></textarea>
          </div>
          <div class="input-field1">
            <label class="message">City</label>
            <i class="fa fa-list icon1"></i>
            <textarea class="textarea1" name="city" required="required"></textarea>
          </div>
          <div class="input-field1">
            <label>Zip code</label>
            <i class="fa fa-home icon1"></i>
            <input type="number" class="inputs1" name="pin" required="required">
          </div>
          <div class="input-field1">
            <label>Phone No</label>
            <i class="fa fa-phone icon1"></i>
            <input type="number" class="inputs1" name="contact" required="required">
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
