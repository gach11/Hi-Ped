package com.login.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.login.bean.LoginBean;

public class ImpDao implements LoginDao {
		private Connection conn;
		
		public ImpDao(Connection conn) {
			super();
			this.conn = conn;
		}

		@Override
		public boolean userRegister(LoginBean loginBean) {
			boolean f = false;
			try {
				String sql = "insert into users(username, fullname, email, password)values(?,?,?,?)";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, loginBean.getUsername());
				ps.setString(2, loginBean.getFullname());
				ps.setString(3, loginBean.getEmail());
				ps.setString(4, loginBean.getPassword());
				
				
				int i = ps.executeUpdate();
				if(i==1)
				{
					f=true;
				}
				
			}catch (Exception e){
				e.printStackTrace();
			}
			return f;
		}

		@Override
		public LoginBean userLogin(String username, String password) {
			LoginBean loginBean =null;
			try {
				String sql = "select* from users where username=? and password=? ";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
					
					loginBean = new LoginBean();
					loginBean.setUserId(rs.getInt(1));
					loginBean.setUsername(rs.getString(2));
					loginBean.setFullname(rs.getString(3));
					loginBean.setEmail(rs.getString(4));
					loginBean.setPassword(rs.getString(5));
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			return loginBean;
	
		}


}
