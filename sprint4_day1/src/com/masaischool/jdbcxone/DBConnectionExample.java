package com.masaischool.jdbcxone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionExample {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/sb101_feb","root","root");
		
		System.out.println("Connection established successfully");
		
		conn.close();

	}

}
