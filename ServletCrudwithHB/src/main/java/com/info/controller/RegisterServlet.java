package com.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.daoimpl.Daoimpl;
import com.info.model.Student;
import com.sun.net.httpserver.Authenticator.Success;


public class RegisterServlet extends HttpServlet {
       
   
    
    public RegisterServlet() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Student s=new Student();
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		s.setRollno(rollno);
		System.out.println("rollno :"+rollno);
        String address= request.getParameter("address");
        s.setAddress(address);  
    	System.out.println("address :"+address);
		String name=request.getParameter("name");
		s.setName(name);
		System.out.println("name :"+name);
		String subject=request.getParameter("subject");
		s.setSubject(subject);
		System.out.println("subject :"+subject);
		String gender=request.getParameter("gender");
		s.setGender(gender);
		System.out.println("gender :"+gender);
		String mobno=request.getParameter("mobno");
		s.setMobno(mobno);
		System.out.println("mob no :"+mobno);
		
		String username=request.getParameter("username");
		s.setUsername(username);
		String password=request.getParameter("password");
		s.setPassword(password);
		Daoimpl daoimpl =new Daoimpl();
		daoimpl.addStudent(s);
		response.sendRedirect("login.jsp");
	}

}
