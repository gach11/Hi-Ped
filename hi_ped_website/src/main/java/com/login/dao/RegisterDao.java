package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.login.bean.LoginBean;

public class RegisterDao implements LoginDao {
		private Connection conn;
		
		public RegisterDao(Connection conn) {
			super();
			this.conn = conn;
		}
	public boolean userRegister (LoginBean loginBean) {
		boolean f=false;
		try
		{
			String sql = "insert into users(username, fullname, email, password)values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, loginBean.getUsername());
			ps.setString(2, loginBean.getFullname());
			ps.setString(3, loginBean.getEmail());
			ps.setString(4, loginBean.getPassword());
			
			int i = ps.executeUpdate();
			
			
			
			
		}
	}

}
