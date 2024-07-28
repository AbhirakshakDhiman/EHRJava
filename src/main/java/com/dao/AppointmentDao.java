package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	public List<Appointment> getAllAppointmentByDoctorId(int docid) {
		
		
		List<Appointment> list=new ArrayList<>();
		
		Appointment ap=null;
		try {
			String q="select * from appointment where doctorid=?";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			ps.setInt(1, docid);

			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				ap=new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				ap.setFullname(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppdate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setMob(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorId(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
			return list;
		}
public Appointment getAppointmentById(int id) {
		
		Appointment ap=null;
		try {
			String q="select * from appointment where id=?";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			ps.setInt(1, id);

			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				ap=new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserId(rs.getInt(2));
				ap.setFullname(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppdate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setMob(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorId(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
			return ap;
		}	

public boolean updateStatus(int id,int doctorid,String comm) {
	boolean f=false;
	try {
		String  q="update appointment set status=? where id=? and doctorid=?";
		PreparedStatement ps=con.prepareStatement(q);
		
		ps.setString(1,comm);
		ps.setInt(2,id);
		ps.setInt(3,doctorid);
		
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return f;
		
	
	
	
	
}

public List<Appointment> getAllAppointmentByUserId(int id) {
	
	
	List<Appointment> list=new ArrayList<>();
	
	Appointment ap=null;
	try {
		String q="select * from appointment where userid=?";
		
		PreparedStatement ps=con.prepareStatement(q);
		
		ps.setInt(1, id);

		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			ap=new Appointment();
			ap.setId(rs.getInt(1));
			ap.setUserId(rs.getInt(2));
			ap.setFullname(rs.getString(3));
			ap.setGender(rs.getString(4));
			ap.setAge(rs.getString(5));
			ap.setAppdate(rs.getString(6));
			ap.setEmail(rs.getString(7));
			ap.setMob(rs.getString(8));
			ap.setDiseases(rs.getString(9));
			ap.setDoctorId(rs.getInt(10));
			ap.setAddress(rs.getString(11));
			ap.setStatus(rs.getString(12));
			list.add(ap);
			
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
		return list;
	}

public List<Appointment> getAllAppointmentOfUsers() {
	
	List<Appointment> list=new ArrayList<>();
	
	Appointment ap=null;
	try {
		String q="select * from appointment";
		
		PreparedStatement ps=con.prepareStatement(q);

		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			ap=new Appointment();
			ap.setId(rs.getInt(1));
			ap.setUserId(rs.getInt(2));
			ap.setFullname(rs.getString(3));
			ap.setGender(rs.getString(4));
			ap.setAge(rs.getString(5));
			ap.setAppdate(rs.getString(6));
			ap.setEmail(rs.getString(7));
			ap.setMob(rs.getString(8));
			ap.setDiseases(rs.getString(9));
			ap.setDoctorId(rs.getInt(10));
			ap.setAddress(rs.getString(11));
			ap.setStatus(rs.getString(12));
			list.add(ap);
			
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
		return list;
	}
}
