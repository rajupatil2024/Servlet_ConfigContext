package com.register.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("uname");
        String password = request.getParameter("pass");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        RegisterQuery q = new RegisterQuery();
        try {
            ResultSet rs = q.login(name, password);

            if (rs.next()) {
                // Valid credentials, store information in session
                HttpSession session = request.getSession();
                session.setAttribute("username", name);
                response.sendRedirect("/LoginDisplay");
            } else {
                // Invalid credentials, forward to login page with an error message
                request.setAttribute("errorMessage", "Invalid Credentials");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Login.html");
                dispatcher.forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
