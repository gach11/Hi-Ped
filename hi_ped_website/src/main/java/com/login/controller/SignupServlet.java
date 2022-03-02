package com.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.bean.LoginBean;
import com.login.dao.ImpDao;
import com.login.util.DBConnection;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String username = req.getParameter("username");
			String fullname = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			LoginBean loginBean = new LoginBean();
			loginBean.setUsername(username);
			loginBean.setFullname(fullname);
			loginBean.setEmail(email);
			loginBean.setPassword(password);
			
			ImpDao registerDao = new ImpDao(DBConnection.getConn());
			boolean f = registerDao.userRegister(loginBean);
			if(f)
			{
				System.out.println("User Register Success");
			}else {
				System.out.println("Invalid Registration");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
       
}