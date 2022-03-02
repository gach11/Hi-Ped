package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.login.bean.AppointmentBean;

public class AppointmentDaoImp implements AppointmentDao{
		private Connection conn;
		public AppointmentDaoImp(Connection conn) {
			this.conn=conn;
		}
		
		
		public boolean addApt(AppointmentBean apntBean) {
		boolean f= false;
		try {
			String sql="insert into appointmentdata(appointment_id, user_id, category, fullname, cnumber, bod, age,"
					+ "gender, address, message, datetime, guardian, relation, status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
					
		}
	}
	

}
