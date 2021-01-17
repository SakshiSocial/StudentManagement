package com.model;

public class SubjectAllotment {
	private int sa_id;
	private int faculty_id;
	private int subject_id;
	private String sa_date;
	
	public String getSa_date() {
		return sa_date;
	}
	public void setSa_date(String sa_date) {
		this.sa_date = sa_date;
	}
	public int getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
	}
	public int getFaculty_id() {
		return faculty_id;
	}
	public void setFaculty_id(int faculty_id) {
		this.faculty_id = faculty_id;
	}
	public int getSa_id() {
		return sa_id;
	}
	public void setSa_id(int sa_id) {
		this.sa_id = sa_id;
	}
}
