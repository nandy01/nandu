package com.niit.shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.niit.shopping.controller1.Userdao;

/**
 * Servlet implementation class Loginservlet
 */

public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Integer Integer = null;
	private static final String String = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Loginservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // TODO Auto-generated method
													// stub

		PrintWriter out = response.getWriter();
		String UserID = request.getParameter("UserID");
		String Password = request.getParameter("Password");
		Userdao userdao = new Userdao();
		if (userdao.isvalidcredentials(UserID, Password) == true) {
			HttpSession session= request.getSession();
		    session.setAttribute("User",UserID); 
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Welcome.jsp");
			dispatcher.forward(request, response);
			
		} else {

			out.println("invalid credentials");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.include(request, response);
		
				 
				
		}
	}
}
