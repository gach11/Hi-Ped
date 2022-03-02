package com.login.util;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection {
	private static Connection conn;
	public static Connection getConn()
	{
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false", "root", "Root");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}