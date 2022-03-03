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
				String sql = "select * from users where username=? and password=? ";
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

		@Override
		public boolean validatePassword(int userId, String ps) {
			boolean f=false;
			try {
				String sql = "select * from users where userId=? and password=?";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, userId);
				pst.setString(2, ps);
				
				ResultSet rs = pst.executeQuery();
				while(rs.next())
				{
					f=true;
				}
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return f;
		}

		@Override
		public boolean updateProfile(LoginBean loginBean) {
			boolean f = false;
			try {
				String sql = "update users set username=?, fullname=?, email=?, password=? where userId=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, loginBean.getUsername());
				ps.setString(2, loginBean.getFullname());
				ps.setString(3, loginBean.getEmail());
				ps.setString(4, loginBean.getPassword());
				ps.setInt(5, loginBean.getUserId());
				
				
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
}
