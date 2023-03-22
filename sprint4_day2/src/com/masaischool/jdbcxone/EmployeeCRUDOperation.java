//package com.masaischool.jdbcAgain;
//
////import java.sql.Connection;
////import java.sql.DriverManager;
////import java.sql.SQLException;
//import java.util.ResourceBundle;
//import java.util.Scanner;
//
//public class EmployeeCRUDOperation {
//		
////	static Connection getConnectionTodatabase() throws SQLException, ClassNotFoundException {
////		//step-1: load the Driver class
////		Class.forName("com.mysql.cj.jdbc.Driver");
////		//step-2
////		ResourceBundle rb = ResourceBundle.getBundle("dbdetails");
////		return DriverManager.getConnection(rb.getString("url"), rb.getString("username"), rb.getString("password"));
////	}
////	
////	
////	static void closeConnection(Connection conn) throws SQLException {
////		if(conn != null)
////			conn.close();
////	}
//	
//	static void addEmployee() {
//		Connection conn=null;
//		try{
//			conn= getConnectionTodatabase();
//			
//		}catch(ClassNotFoundException | SQLException ex) {
//			
//		}
//		
//	}
//	public static void main(String[] args) throws SQLException, ClassNotFoundException {
//		Scanner sc = new Scanner(System.in);
//
//		int choice = 0;
//		do {
//			System.out.println("1. Add Student");
//			System.out.println("2. Update Student");
//			System.out.println("3. Delete Student");
//			System.out.println("4. View Student List");
//			System.out.println("5. Search Student By Name");
//			System.out.println("0. Exit");
//			
//			System.out.print("Enter selection ");
//			choice = sc.nextInt();
//			
//			switch(choice) {
//				case 1:
//					addEmployee(sc);
//					break;
//				case 2:
//					updateStudent(sc);
//					break;
//				case 3:
//					deleteStudent(sc);
//					break;
//				case 4:
//					printStudentList();
//					break;
//				case 5:
//					searchStudentByName(sc);
//					break;
//				case 0:
//					System.out.println("Thnaks for using our services");
//					break;
//				default:
//					System.out.println("Invalid Selection, try again later");
//			}			
//		}while(choice != 0);
//		sc.close();
//		
//	}
//
//}
