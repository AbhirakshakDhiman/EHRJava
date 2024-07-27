package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Appointment;


public class AppointmentDao{


	private Connection con;

	public AppointmentDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean addAppointment(Appointment ap) {
		boolean f=false;
		try {
			String q="insert into appointment(userid,fullname,gender,age,appdate,email,mob,diseases,doctorid,address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			ps.setInt(1,ap.getUserId());
			ps.setString(2, ap.getFullname());
			ps.setString(3,ap.getGender());
			ps.setString(4,ap.getAge());
			ps.setString(5,ap.getAppdate());
			ps.setString(6,ap.getEmail());
			ps.setString(7,ap.getMob());
			ps.setString(8,ap.getDiseases());
			ps.setInt(9,ap.getDoctorId());
			ps.setString(10,ap.getAddress());
			ps.setString(11,ap.getStatus());
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
