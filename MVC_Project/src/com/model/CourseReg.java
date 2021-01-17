package com.model;

public class CourseReg {	
	private int Course_id;
	private String Course_name;
	private String Course_icon;
	private String Course_desc;
	public String getCourse_desc() {
		return Course_desc;
	}
	public void setCourse_desc(String course_desc) {
		Course_desc = course_desc;
	}
	public String getCourse_icon() {
		return Course_icon;
	}
	public void setCourse_icon(String course_icon) {
		Course_icon = course_icon;
	}
	public String getCourse_name() {
		return Course_name;
	}
	public void setCourse_name(String course_name) {
		Course_name = course_name;
	}
	public int getCourse_id() {
		return Course_id;
	}
	public void setCourse_id(int course_id) {
		Course_id = course_id;
	}
	
}