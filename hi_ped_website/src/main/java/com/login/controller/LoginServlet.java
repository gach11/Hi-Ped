package com.login.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;


import com.login.bean.LoginBean;
import com.login.util.DBConnection;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginServlet() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
   String username = request.getParameter("username");
   String password = request.getParameter("password");
   String role = "";
   
   
   if("secretary".equals(username)&&"secretary".equals(password)&&"Secretary".equals(role)) {
	   response.sendRedirect("secretary-dashboard.jsp");
   }
   else if("doctor".equals(username)&&"doctor".equals(password)&&"Doctor".equals(role)) {
	   response.sendRedirect("doctor-dashboard.jsp");
   }
   else if("secretary".equals(username)&&"secretary".equals(password)&&"Secretary".equals(role)) {
	  UserDao userDao - new UserDao(Dbconnection.)
   }
} //End of doPost()
}