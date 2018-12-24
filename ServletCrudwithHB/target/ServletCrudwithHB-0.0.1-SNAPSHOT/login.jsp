<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<center>
<body> <h1>Login Page</h1> 
<div class="container">
<h2 class="bg-primary text-white" >
<%String msg=(String)request.getAttribute("msg"); 
if(msg!=null){%>
	<%=msg %>
<%}

%></h2>
 <form action="LoginServlet" method="post" style="width:50%"> <br/>
 Username:<input type="text"  class="form-control"  name="username"> <br/>
 Password:<input type="password" class="form-control"  name="password"> <br/>
 <input type="submit" value="Submit" class="btn btn-primary"> </form>
 
 
 <a href="register.jsp">create new student</a>
 
  </center> 
  </body>
</html>