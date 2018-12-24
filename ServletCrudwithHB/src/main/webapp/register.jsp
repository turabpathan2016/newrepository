<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
   <title> Registration Form</title>
</head>
<head>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h1>Register Form</h1>
<form action="RegisterServlet" method="post" style="width:50%">
<div class="form-group">
<label for="rollno"><h4>Roll No:</h4></label>
    <input type="text" class="form-control" placeholder="Enter rollno" name="rollno">
    </div>
    <div class="form-group">
  <label for="name"><h4>Name:</h4></label>
  <input type="text" class="form-control" name="name" placeholder="Enter name">
</div>
<div class="form-group">
  <label for="address"><h4>Address:</h4></label>
  <input  type="text" class="form-control" name="address" placeholder="Enter address">
</div>
					
<div class="form-group">
  <label for="subject"><h4>Subject</h4></label>
  <input type="text" class="form-control" name="subject" placeholder="Enter subject">
</div>
				
<div class="form-group">
  <label class="radio-inline">
  <h4>Gender:</h4>
  </label>
  <label class="radio-inline">
  <input type="radio" class="form-control" name="gender" value="male">male
  </label>
 
  <label class="radio-inline">
  <input type="radio" class="form-control" name="gender" value="female">female
  </label>
  <label class="radio-inline">
   <input type="radio" class="form-control" name="gender" value="other">other
   </label>
</div>
				
	<div class="form-group">
  <label for="mobno"><h4>Contact No</h4></label>
  <input type="text" class="form-control" name="mobno" placeholder="Enter mobno">
</div>	
<div class="form-group">
  <label for="username"><h4>Username:</h4></label>
  <input type="text" class="form-control" name="username" placeholder="Enter username">
</div>
	<div class="form-group">
  <label for="password">Password</label>
  <input type="text" class="form-control" name="password" placeholder="Enter password">
</div>
<input type="submit" value="Submit"  class="btn btn-primary"/>
</form>
</body>
</html>