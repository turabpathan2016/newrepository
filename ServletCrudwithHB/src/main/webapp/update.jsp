<%@page import="com.info.daoimpl.Daoimpl"%>
<%@page import="com.info.model.Student" %>
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

<%String rollno=request.getParameter("rollno");
int rollno1=Integer.parseInt(rollno);
request.setAttribute("rollno", rollno1);%>
<%Daoimpl dao=new Daoimpl();
Student student=dao.getStudent(rollno1);%>
<form action="updateServlet" method="post" style="width:50%">
<div class="form-group">
<label for="rollno"><h4>Roll No:</h4></label>
    <input type="text" class="form-control" name="rollno" value="<%=student.getRollno() %>">
    </div>
    <div class="form-group">
  <label for="name"><h4>Name:</h4></label>
  <input type="text" class="form-control" name="name" value="<%=student.getName() %>">
</div>
<div class="form-group">
  <label for="address"><h4>Address:</h4></label>
  <input  type="text" class="form-control" name="address" value="<%=student.getAddress()%>">
</div>
					
<div class="form-group">
  <label for="subject"><h4>Subject</h4></label>
  <input type="text" class="form-control" name="subject" value="<%=student.getSubject() %>">
</div>
				
<div class="form-group">
  <label class="radio-inline">
  <h4>Gender:</h4>

  </label>
  <label class="radio-inline">
  <input type="radio" class="form-control" name="gender"  value="male">male
  </label>
   <label class="radio-inline">
  <input type="radio" class="form-control" name="gender"  value="female">female
  </label>
  <label class="radio-inline">
   <input type="radio" class="form-control" name="gender"  value="other">other
   </label>
<div class="form-group">
  <label for="mobno"><h4>Contact No</h4></label>
  <input type="text" class="form-control" name="mobno" value="<%=student.getMobno()%>">
</div>	
<div class="form-group">
  <label for="username"><h4>Username:</h4></label>
  <input type="text" class="form-control" name="username" value="<%=student.getUsername()%>" >
</div>
	<div class="form-group">
  <label for="password">Password</label>
  <input type="text" class="form-control" name="password"  value="<%=student.getPassword() %>">
</div>
<input type="submit" value="update"  class="btn btn-primary"/>
</form>
</body>
</html>