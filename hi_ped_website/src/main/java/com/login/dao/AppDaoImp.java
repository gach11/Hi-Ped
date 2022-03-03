package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.login.bean.AppointmentBean;

public class AppDaoImp implements AppDao {

	private Connection conn;

	public AppDaoImp(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addPatient(AppointmentBean apt) {

		boolean f = false;
		try {
			String sql = "insert into appointmentdata(userId, category, fullname, cnumber, bod, age,"
					+ "gender, address, concern, datetime, guardian, relation)values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, apt.getUserId());
			ps.setString(2, apt.getCtc());
			ps.setString(3, apt.getPatientName());
			ps.setString(4, apt.getNumber());
			ps.setString(5, apt.getBod());
			ps.setInt(6, apt.getAge());
			ps.setString(7, apt.getGender());
			ps.setString(8, apt.getAddress());
			ps.setString(9, apt.getMsg());
			ps.setString(10, apt.getDatetime());
			ps.setString(11, apt.getGuardian());
			ps.setString(12, apt.getRelation());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<AppointmentBean> listAppointment(int userId) {
		List<AppointmentBean> list = new ArrayList<AppointmentBean>();
		AppointmentBean ab = null;
		try {

			String sql = "select fullname, concern, datetime, status from appointmentdata where userId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ab = new AppointmentBean();
				ab.setPatientName(rs.getString(1));
				ab.setMsg(rs.getString(2));
				ab.setDatetime(rs.getString(3));
				ab.setStatus(rs.getString(4));
				list.add(ab);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
