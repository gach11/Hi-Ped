package com.login.dao;

import java.util.List;

import com.login.bean.AppointmentBean;

public interface AppDao {

	public boolean addPatient(AppointmentBean apt);

	public List<AppointmentBean> listAppointment(int userId);

}
