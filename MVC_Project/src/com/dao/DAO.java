package com.dao;
import java.sql.Connection;
import java.sql.Statement;

import com.DB.DBHelper;

import java.sql.DriverManager;
import java.sql.ResultSet;
public class DAO {
	static String provider="jdbc:mysql://localhost:3306/Student_Management_System";
	static String uid="root";
	static String pwd="";
	public static String UpdateRecord(String q) {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection cn=DriverManager.getConnection(provider,uid,pwd);
			boolean st=DBHelper.executeUpdate(q,cn);
			return "yes";
		}catch(Exception exp) {
			return "Error"+exp;
		}
	}
	public static ResultSet displayRecord(String q) {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection cn=DriverManager.getConnection(provider,uid,pwd);
			Statement smt=cn.createStatement();
			ResultSet rs=DBHelper.executeQuery(q,cn);
			return rs;
		}catch(Exception exp) {
			System.out.println(exp);
			return null;
		}
	}
}
