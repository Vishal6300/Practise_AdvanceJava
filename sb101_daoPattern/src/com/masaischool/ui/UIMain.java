package com.masaischool.ui;

import java.time.LocalDate;
import java.util.Scanner;

public class UIMain {
	
	static void addEmployeeUI(Scanner sc) {
		System.out.println("ENter employee id");
		String eid=sc.next();
		
		System.out.println("ENter employee name");
		String name=sc.next();	
		
		System.out.println("ENter employee salary");
		double salary=sc.nextDouble();
		
		System.out.println("ENter employee joining date");
		LocalDate joiningDate= LocalDate.parse(sc.next());
		
	}
	
	static void deleteEmployeeUI(Scanner sc) {
			
	}
	static void updateEmployeeUI(Scanner sc) {
		System.out.println("ENter employee id");
		String eid=sc.next();
		
		System.out.println("ENter employee name");
		String name=sc.next();	
		
		System.out.println("ENter employee salary");
		double salary=sc.nextDouble();
		
		System.out.println("ENter employee joining date");
		LocalDate joiningDate= LocalDate.parse(sc.next());
		
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int choice = 0;
		do {
			System.out.println("0. Exit");
			System.out.println("1. Add Employee");
			System.out.println("2. View Employee");
			System.out.println("3. Delete Employee");
			System.out.println("4. View Employee List");
			System.out.println("5. Search Employee By Name");
			
			
			System.out.print("Enter selection ");
			choice = sc.nextInt();
			
			switch(choice) {
				case 1:
					addEmployeeUI(sc);
					break;
				case 2:
//					updateStudent(sc);
					break;
				case 3:
//					deleteStudent(sc);
					break;
				case 4:
//					printStudentList();
					break;
				case 5:
//					searchStudentByName(sc);
					break;
				case 0:
					System.out.println("Thnaks for using our services");
					break;
				default:
					System.out.println("Invalid Selection, try again later");
			}			
		}while(choice != 0);
		sc.close();
		
	}

	}


