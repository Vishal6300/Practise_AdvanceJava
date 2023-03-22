package com.masaischool.jdbcAgain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ResourceBundle;
import java.util.Scanner;

public class DBConnectionExample {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		Scanner sc= new Scanner(System.in);
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		ResourceBundle rb= ResourceBundle.getBundle("dbdetails");
		
		Connection conn= DriverManager.getConnection(rb.getString("url"),rb.getString("username"),rb.getString("password"));
		
		
		System.out.println("Connection established successfully");
		
		Statement st= conn.createStatement();
		
//		Insert data
		System.out.println("Please enter roll number");
		String rollNo=sc.next();
		
		System.out.println("Please enter name ");
		String name=sc.next();
		
		System.out.println("Please enter cgpa");
		double cgpa=sc.nextDouble();
		System.out.println("Please enter dob(YYYY-MM-DD)");
		LocalDate dob=LocalDate.parse(sc.next());
		
		
		String query="INSERT INTO STUDENT VALUES('"+ rollNo +"','"+name + "'," + cgpa+",'"+dob+"')";
		
		if(st.executeUpdate(query)>0) {
			System.out.println("Student added successfully");
		}else {
			System.out.println("not able to add student");
		}
		
		
		conn.close();

	}

}
