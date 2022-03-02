package com.login.controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.util.DBConnection;

@WebServlet("/appoint")
public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AppointmentServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int userId = Integer.parseInt(request.getParameter("userId"));
		String ctc = request.getParameter("category");
		String patientName = request.getParameter("name");
		String number = request.getParameter("cnumber");
		String bod  = request.getParameter("bod");
		int age  = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String msg = request.getParameter("msg");
		String datetime = request.getParameter("datetime");
		String guardian  = request.getParameter("guardian");
		String relation  = request.getParameter("relation");
		

		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeStamp = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
			 java.util.Date newBod = dateFormat.parse(bod);
			 java.util.Date newDatetime = timeStamp.parse(datetime);
			 long ts = newDatetime.getTime();
			 Timestamp newts = new Timestamp (ts);
			 long dob = newBod.getTime();
			 Date newDob = new Date(dob);			 
			 
				con =  DBConnection.getConn();
				PreparedStatement ps = con.prepareStatement("insert into appointmentdata(userId, category,"
						+ "fullname, cnumber, bod,age,gender,address,message,datetime,guardian,relation)"
						+ "values (?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1, userId);
				ps.setString(2, ctc);
				ps.setString(3, patientName);
				ps.setString(4, number);
				ps.setDate(5, newDob);
				ps.setInt(6, age);
				ps.setString(7, gender);
				ps.setString(8, address);
				ps.setString(9, msg);
				ps.setTimestamp(10, newts);
				ps.setString(11, guardian);
				ps.setString(12, relation);
				
			int rowCount = ps.executeUpdate();
			dispatcher = request.getRequestDispatcher("userprofile.jsp");
			HttpSession session = request.getSession();
			
			if (rowCount > 0) {
				session.setAttribute("succMsg", "Appointment Schedule Successfully");
				response.sendRedirect("userprofile.jsp");
				
			} else {
				session.setAttribute("failedMsg", "Appointment Unsuccessfully");
				response.sendRedirect("patient_form.jsp");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}

}
