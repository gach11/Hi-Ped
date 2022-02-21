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
	
		String ctc = request.getParameter("category");
		String patientname = request.getParameter("name");
		String number = request.getParameter("cnumber");
		String bod  = request.getParameter("bod");
		int age  = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String condition = request.getParameter("condition");
		String datetime = request.getParameter("datetime");
		String g_name  = request.getParameter("guardian");
		String g_relation  = request.getParameter("relation");
		

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
			 
				con =  DBConnection.createConnection();
				PreparedStatement ps = con.prepareStatement("insert into telehealth.appointmentdata(category,"
						+ "fullname, cnumber, bod,age,gender,address,message,datetime,guardian,relation)"
						+ "values (?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, ctc);
				ps.setString(2, patientname);
				ps.setString(3, number);
				ps.setDate(4, newDob);
				ps.setInt(5, age);
				ps.setString(6, gender);
				ps.setString(7, address);
				ps.setString(8, condition);
				ps.setTimestamp(9, newts);
				ps.setString(10, g_name);
				ps.setString(11, g_relation);
				
			int rowCount = ps.executeUpdate();
			dispatcher = request.getRequestDispatcher("Client.jsp");
			
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
