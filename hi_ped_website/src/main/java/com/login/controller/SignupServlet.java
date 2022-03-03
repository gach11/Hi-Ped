package com.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			String confirmpassword = req.getParameter("newPassword");

			LoginBean loginBean = new LoginBean();
			loginBean.setUsername(username);
			loginBean.setFullname(fullname);
			loginBean.setEmail(email);
			loginBean.setPassword(password);

			ImpDao registerDao = new ImpDao(DBConnection.getConn());
			boolean f = registerDao.userRegister(loginBean);

			HttpSession session = req.getSession();
			
			if (password.equals(confirmpassword)) {
			
			if (f) {
				session.setAttribute("succMsg", "Sign Up Successfully");
				resp.sendRedirect("login.jsp");
			} else {
				session.setAttribute("failedMsg", "Try Again Later");
				resp.sendRedirect("signup.jsp");
			}
			}
			else {
				session.setAttribute("failedMsg", "Password not Match, try again");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}