package com.login.bean;
 
public class LoginBean {

	private int userId;
	private String fullname;
	private String email;
    private String username;
    private String password;
    
	
	public LoginBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int i) {
		this.userId = i;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginBean [userId=" + userId + ", fullname=" + fullname + ", email=" + email + ", username=" + username
				+ ", password=" + password + "]";
	}
	
}