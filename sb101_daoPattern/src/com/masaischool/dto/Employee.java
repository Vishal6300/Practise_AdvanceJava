package com.masaischool.dto;

import java.time.LocalDate;

public class Employee {
	private String empid;
	private String name;
	private double salary;
	private LocalDate date;
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	public Employee(String empid, String name, double salary, LocalDate date) {
		super();
		this.empid = empid;
		this.name = name;
		this.salary = salary;
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", name=" + name + ", salary=" + salary + ", date=" + date + "]";
	}
	
	
	
	
}
