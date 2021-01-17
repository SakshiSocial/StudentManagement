package com.DB;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
public class DBHelper {
	public static boolean executeUpdate(String query,Connection cn) {
		try {
			Statement smt=cn.createStatement();
			smt.executeUpdate(query);
			return(true);
		}catch(Exception exp) {
			System.out.println(exp);
			return(false);
		}
	}
	public static ResultSet executeQuery(String query,Connection cn) {
		try {
			Statement smt=cn.createStatement();
			ResultSet rs=smt.executeQuery(query);
			return(rs);
		}catch(Exception exp) {
			System.out.println(exp);
			return(null);
		}
	}
}
