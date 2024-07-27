package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;

public class DoctorDao {
	private Connection con;

	public DoctorDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean addDoctor(Doctor d) {
		boolean f=false;
		try {
			String q="insert into doctors(fullname,dob,qualification,specialist,email,mobno,password) values(?,?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			ps.setString(1,d.getFullname());
			ps.setString(2,d.getDob());
			ps.setString(3,d.getQuali());
			ps.setString(4,d.getSpecialist());
			ps.setString(5,d.getEmail());
			ps.setString(6,d.getMobno());
			ps.setString(7,d.getPassword());
		
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Doctor> getAllDoctors(){
		List<Doctor> list=new ArrayList<>();
		 
Doctor s=null;
		
		try{
			String sql="select * from doctors";
		PreparedStatement ps=con.prepareStatement(sql);
		
		
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQuali(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobno(rs.getString(7));
			s.setPassword(rs.getString(8));
			list.add(s);
			
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
		return list;
	}
	
	public Doctor getDoctorById(int id){
		
		 
Doctor s=null;
		
		try{
			String sql="select * from doctors where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, id);
		
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQuali(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobno(rs.getString(7));
			s.setPassword(rs.getString(8));
		
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
		return s;
	}
	public boolean updateDoctor(Doctor d) {
		boolean f=false;
		try {
			String q="update  doctors set fullname=?,dob=?,qualification=?,specialist=?,email=?,mobno=?,password=? where id=?";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			ps.setString(1,d.getFullname());
			ps.setString(2,d.getDob());
			ps.setString(3,d.getQuali());
			ps.setString(4,d.getSpecialist());
			ps.setString(5,d.getEmail());
			ps.setString(6,d.getMobno());
			ps.setString(7,d.getPassword());
		    ps.setInt(8,d.getId());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean deleteDoctor(int id) {
		boolean f=false;
		try {
			String q="delete from doctors where id=?";
			
			PreparedStatement ps=con.prepareStatement(q);
			
			
		    ps.setInt(1,id);
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public Doctor login(String email,String pass){
		
		 
Doctor s=null;
		
		try{
			String sql="select * from doctors where email=? and password=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
	
		ps.setString(2,pass);
		
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQuali(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobno(rs.getString(7));
			s.setPassword(rs.getString(8));
			
			
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
return s;
	}
}
