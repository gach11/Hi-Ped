package com.login.dao;

import com.login.bean.LoginBean;

public interface LoginDao {
	public boolean userRegister(LoginBean loginBean);
	public LoginBean userLogin(String username, String password);
}
