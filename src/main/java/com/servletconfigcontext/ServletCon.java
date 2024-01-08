package com.servletconfigcontext;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ServletCon")
public class ServletCon extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
		ServletContext con=getServletContext();
		String user="Raju Patil";
		request.setAttribute("name", user);
		RequestDispatcher rd=request.getRequestDispatcher("./Attribute");
		rd.forward(request, response);
//		String email=con.getInitParameter("Email");
//		out.print("Email Domain is: "+email);
	}
}
