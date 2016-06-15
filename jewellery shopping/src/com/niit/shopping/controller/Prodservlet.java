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

/**
 * Servlet implementation class Prodservlet
 */
@WebServlet("/Prodservlet")
public class Prodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Prodservlet() {
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
		String id = request.getParameter("id");
		
		if (id.equals("ring")) {
			request.setAttribute("id", id);
			String name = "Roseleaf Ring";
			String description = "Ring";
			String Price = "200";
			request.setAttribute("leaf", name);
			request.setAttribute("lring", description);
			request.setAttribute("200", Price);

			
			RequestDispatcher dispatcher = request.getRequestDispatcher("proinfo.jsp");
			dispatcher.forward(request, response);

		} else {

			if (id.equals("rin")) {

				request.setAttribute("id", id);
				String name = "Pearl Ring";
				String description = "Ring";
				String Price = "100";
				request.setAttribute("pearl", name);
				request.setAttribute("ring", description);
				request.setAttribute("100", Price);

				RequestDispatcher dispatcher = request.getRequestDispatcher("proinfo.jsp");
				dispatcher.forward(request, response);

			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
}
