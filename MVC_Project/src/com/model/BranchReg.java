package com.model;

public class BranchReg {
	private int Course_id;
	private int Branch_id;
	private String Branch_name;
	private String Branch_icon;
	private String Branch_desc;
	public String getBranch_desc() {
		return Branch_desc;
	}
	public void setBranch_desc(String branch_desc) {
		Branch_desc = branch_desc;
	}
	public String getBranch_icon() {
		return Branch_icon;
	}
	public void setBranch_icon(String branch_icon) {
		Branch_icon = branch_icon;
	}
	public String getBranch_name() {
		return Branch_name;
	}
	public void setBranch_name(String branch_name) {
		Branch_name = branch_name;
	}
	public int getBranch_id() {
		return Branch_id;
	}
	public void setBranch_id(int branch_id) {
		Branch_id = branch_id;
	}
	public int getCourse_id() {
		return Course_id;
	}
	public void setCourse_id(int course_id) {
		Course_id = course_id;
	}
}
