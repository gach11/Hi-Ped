package com.login.controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.util.DBConnection;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignupServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = "Client";
		
		
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		try {
			con =  DBConnection.createConnection();
			PreparedStatement pst = con.prepareStatement("insert into users (fullname, email, username, password, role) value(?, ?, ?, ?, ?)");
			pst.setString(1, fullname);
			pst.setString(2, email);
			pst.setString(3, username);
			pst.setString(4, password);
			pst.setString(5, role);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("login.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}			
	}

}
