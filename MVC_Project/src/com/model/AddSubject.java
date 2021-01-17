package com.model;

public class AddSubject {
	private int sub_id;
	private String Sub_name;
	private int branch_id;
	private int Semester;
	private String Sub_desc;
	public int getSemester() {
		return Semester;
	}
	public void setSemester(int semester) {
		Semester = semester;
	}
	public String getSub_name() {
		return Sub_name;
	}
	public void setSub_name(String sub_name) {
		Sub_name = sub_name;
	}
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
	public String getSub_desc() {
		return Sub_desc;
	}
	public void setSub_desc(String sub_desc) {
		Sub_desc = sub_desc;
	}
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}
	
}
