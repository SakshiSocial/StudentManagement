package com.model;

public class FacultyReg {
private int branch_id;
private int faculty_id;
private String faculty_name;
private String email;
private String password;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFaculty_name() {
	return faculty_name;
}
public void setFaculty_name(String faculty_name) {
	this.faculty_name = faculty_name;
}
public int getBranch_id() {
	return branch_id;
}
public void setBranch_id(int branch_id) {
	this.branch_id = branch_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getFaculty_id() {
	return faculty_id;
}
public void setFaculty_id(int faculty_id) {
	this.faculty_id = faculty_id;
}
}
