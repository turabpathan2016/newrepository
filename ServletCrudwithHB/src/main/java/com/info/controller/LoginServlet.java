package com.info.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.daoimpl.Daoimpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	Daoimpl daoimpl =new Daoimpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("username :"+username);
		System.out.println("password :"+password);
		
		
		
		
			boolean result= daoimpl.logincheck(username, password);	
			if(result)
			{
				request.setAttribute("stulist", daoimpl.getAllStudent());
				RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
				
				
				//System.out.println("login success.....");
				response.sendRedirect("success.jsp");
			
			}
			else {
				System.out.println("error page");
				request.setAttribute("msg","enter valid username and password");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
	}


}