package com.masaischool.jdbcxone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBConnectionExample {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		ResourceBundle rb= ResourceBundle.getBundle("dbdetails");
		
		
		Connection conn= DriverManager.getConnection("dbdetails.geturl","root","root");
		
		System.out.println("Connection established successfully");
		
		conn.close();

	}

}
