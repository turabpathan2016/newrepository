<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>successpage</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h4>
</center>
    <div align="center">
    <h2 class="bg-primary text-white" style="width: 50">display page..........</h2>
        <table class="table table-bordered" border="1">
       
          
      <%ArrayList<Student>list=(ArrayList<Student>)request.getAttribute("stulist"); %>
      <thead>
            <tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Address</th>
                <th>Subject</th>
                <th>Gender</th>
                <th>Mob no</th>
                <th>uname</th>
                <th>password</th>
                <th>EDITE</th>
                <th>DELETE</th>
            </tr>
            </thead>
           <tbody>
              <tr>
       
      </tr>   
            <%for(Student s:list) {%>
            
                <tr>
                    <td><%=s.getRollno() %></td>
                    <td><%=s.getName() %></td>
                    <td><%=s.getAddress() %></td>
                    <td><%=s.getSubject() %></td>
                    <td><%=s.getGender() %></td>
                    <td><%=s.getMobno() %></td>
                    <td><%=s.getUsername() %></td>
                     <td><%=s.getPassword()%></td>
                    <td><a href="update.jsp?rollno=<%=s.getRollno()%>" class="btn btn-success"/>Edit</a></td>
                    <td><a href="DeleteServlet?rollno=<%=s.getRollno()%>" class="btn btn-danger"/>Delete</a></td>
                          
                </tr>
            
               </tbody>
            <%}%>
             <a href="register.jsp" class="btn btn-success"/>create new Student</a>
        </table></h4>
        
    </div>  
     
</body>
</body>
</html>