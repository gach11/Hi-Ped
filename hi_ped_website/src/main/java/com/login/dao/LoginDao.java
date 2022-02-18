package com.login.dao;
 
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import com.login.bean.LoginBean;
import com.login.util.DBConnection;
 
public class LoginDao {
 
public String authenticateUser(LoginBean loginBean)
{
    String username = loginBean.getUsername();
    String password = loginBean.getPassword();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
    String roleDB = "";
 
    try
    {
        con = DBConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select username,password,role from users");
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("username");
            passwordDB = resultSet.getString("password");
            roleDB = resultSet.getString("role");
 
            if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Doctor"))
            return "Doctor";
            else if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Secretary"))
            return "Secretary";
            else if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Client"))
            return "Client";
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}
}