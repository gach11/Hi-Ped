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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			ImpDao impDao = new ImpDao(DBConnection.getConn());
			HttpSession session = req.getSession();
			
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			
			
			if("doctor".equals(username)&&"doctor".equals(password))
			{
					LoginBean loginBean = new LoginBean();
					loginBean.setFullname("Doctor");
					session.setAttribute("currentUser", loginBean);
					resp.sendRedirect("doctor_dashboard.jsp");
			}
			else if("secretary".equals(username)&&"secretary".equals(password))
			{
				LoginBean loginBean = new LoginBean();
				loginBean.setFullname("Secretary");
				session.setAttribute("currentUser", loginBean);
				resp.sendRedirect("secretary_dashboard.jsp");
			}
			else
			{
				LoginBean loginBean = impDao.userLogin(username, password);
				if(loginBean != null) {
					session.setAttribute("currentUser", loginBean);
					resp.sendRedirect("index2.jsp");
				}
				else
				{
					session.setAttribute("failedMsg", "Username & Password Invalid");
					resp.sendRedirect("login.jsp");
				}
				resp.sendRedirect("index.jsp");
			}
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}
