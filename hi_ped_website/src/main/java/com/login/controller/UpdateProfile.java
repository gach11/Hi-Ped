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

@WebServlet("/update")
public class UpdateProfile extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int userId = Integer.parseInt(req.getParameter("userId"));
			String username = req.getParameter("username");
			String fullname = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			LoginBean loginBean = new LoginBean();
			loginBean.setUserId(userId);
			loginBean.setUsername(username);
			loginBean.setFullname(fullname);
			loginBean.setEmail(email);
			loginBean.setPassword(password);

			HttpSession session = req.getSession();
			ImpDao impDao = new ImpDao(DBConnection.getConn());

			boolean f = impDao.validatePassword(userId, password);
			if (f) {
				boolean p = impDao.updateProfile(loginBean);
				if (p) {
					session.setAttribute("succMsg", "Update Profile Successfully");
					resp.sendRedirect("usereditprofile.jsp");
				} else {
					session.setAttribute("failedMsg", "Update Profile Unsuccessfully");
					resp.sendRedirect("usereditprofile.jsp");
				}
			} else {
				session.setAttribute("failedMsg", "Your Password is Incorrect");
				resp.sendRedirect("usereditprofile.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
