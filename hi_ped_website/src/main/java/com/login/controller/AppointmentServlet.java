package com.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.bean.AppointmentBean;
import com.login.dao.AppDaoImp;
import com.login.util.DBConnection;

@WebServlet("/appointment")
public class AppointmentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			int userId = Integer.parseInt(req.getParameter("userId"));
			String ctc = req.getParameter("category");
			String patientName = req.getParameter("name");
			String number = req.getParameter("cnumber");
			String bod = req.getParameter("bod");
			int age = Integer.parseInt(req.getParameter("age"));
			String gender = req.getParameter("gender");
			String address = req.getParameter("address");
			String concern = req.getParameter("msg");
			String datetime = req.getParameter("datetime");
			String guardian = req.getParameter("guardian");
			String relation = req.getParameter("relation");

			AppointmentBean ab = new AppointmentBean();
			ab.setUserId(userId);
			ab.setCtc(ctc);
			ab.setPatientName(patientName);
			ab.setNumber(number);
			ab.setBod(bod);
			ab.setAge(age);
			ab.setGender(gender);
			ab.setAddress(address);
			ab.setMsg(concern);
			ab.setDatetime(datetime);
			ab.setGuardian(guardian);
			ab.setRelation(relation);

			AppDaoImp appDaoImp = new AppDaoImp(DBConnection.getConn());

			boolean f = appDaoImp.addPatient(ab);

			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Appointment Successfully");
				resp.sendRedirect("patient_form.jsp");
			} else {
				session.setAttribute("failedMsg", "Appointment Unsuccessfully");
				resp.sendRedirect("patient_form.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
