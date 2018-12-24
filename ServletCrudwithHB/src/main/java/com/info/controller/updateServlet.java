package com.info.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.daoimpl.Daoimpl;
import com.info.model.Student;

/**
 * Servlet implementation class updateServlet
 */
public class updateServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	Daoimpl daoimpl=new Daoimpl();
       
   
    
    public updateServlet() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			System.out.println("in update servlet..............");
		
	String rollno=request.getParameter("rollno");
	int rollno1=Integer.parseInt(rollno);
	//System.out.println(rollno1);
	Student s=new Student();
	s.setName(request.getParameter("name"));
	s.setAddress(request.getParameter("address"));
	s.setGender(request.getParameter("gender"));
	s.setSubject(request.getParameter("subject"));
	s.setMobno(request.getParameter("mobno"));
	s.setUsername(request.getParameter("username"));
	s.setPassword(request.getParameter("password"));
	s.setRollno(rollno1);
	System.out.println("name   :"+s.getName());
	List<Student>listOfStudent=daoimpl.updateStudent(s);
	//student.getRollno()
	if(listOfStudent!=null)
	{
		request.setAttribute("stulist", listOfStudent);
	request.getRequestDispatcher("success.jsp").forward(request, response);
	}
		}catch (Exception e) {
			System.out.println("in catch block...........");
		}
	}

}
