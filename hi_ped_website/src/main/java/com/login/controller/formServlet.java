package com.login.controller;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/add")
public class formServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String generic = request.getParameter("generic");
		String brand = request.getParameter("brand");
		String form = request.getParameter("form");
		String frequency = request.getParameter("frequency");
		String duration = request.getParameter("duration");
		String instruction = request.getParameter("instruction");
		int patient_id = 2; //kung sino nakalogin
		RequestDispatcher dispatcher = null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false","root","Root");
			PreparedStatement pst = con.prepareStatement("insert into prescription(appointment_id,generic,brand,form,frequency, duration, instruction) values(?,?,?,?,?,?,?)");
			
			pst.setInt(1, patient_id);
			pst.setString(2, generic);
			pst.setString(3, brand);
			pst.setString(4, form);
			pst.setString(5, frequency);
			pst.setString(6, duration);
			pst.setString(7, instruction);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("form.jsp");
			System.out.print("successfullly");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}

