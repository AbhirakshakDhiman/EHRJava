package com.entity;

public class Doctor {
	private int id;
private String fullname;
private String dob;
private String quali;
private String specialist;
private String email;

private String mobno;
private String password;
public Doctor(String fullname, String dob, String quali, String specialist, String email, String mobno,
		String password) {
	super();
	this.fullname = fullname;
	this.dob = dob;
	this.quali = quali;
	this.specialist = specialist;
	this.email = email;
	this.mobno = mobno;
	this.password = password;
}
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getDob() {
	return dob;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Doctor(int id, String fullname, String dob, String quali, String specialist, String email, String mobno,
		String password) {
	super();
	this.id = id;
	this.fullname = fullname;
	this.dob = dob;
	this.quali = quali;
	this.specialist = specialist;
	this.email = email;
	this.mobno = mobno;
	this.password = password;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getQuali() {
	return quali;
}
public void setQuali(String quali) {
	this.quali = quali;
}
public String getSpecialist() {
	return specialist;
}
public void setSpecialist(String specialist) {
	this.specialist = specialist;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobno() {
	return mobno;
}
public void setMobno(String mobno) {
	this.mobno = mobno;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Doctor() {
	super();
	// TODO Auto-generated constructor stub
}
}
