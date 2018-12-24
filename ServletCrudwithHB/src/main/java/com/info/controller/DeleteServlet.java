package com.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.daoimpl.Daoimpl;
import com.info.model.Student;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     * 
     */
	Daoimpl daoimpl=new Daoimpl();
	Student student=new Student();
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollno=request.getParameter("rollno");
		int rollno1=Integer.parseInt(rollno);
		System.out.println("rollno : "+rollno1);
		student.setRollno(rollno1);
		boolean result=daoimpl.delete(student.getRollno());
		if(result)
		{
			request.setAttribute("stulist", daoimpl.getAllStudent());
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		
	}

}
