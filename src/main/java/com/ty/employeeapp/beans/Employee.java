package com.ty.employeeapp.beans;

public class Employee {

	private String name;
	private String eMail;
	private String dateOfBirth;
	private int age;
	private double salary;
	private String empStatus; 

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmpStatus() {
		return empStatus;
	}

	public void setEmpStatus(String empStatus) {
		this.empStatus = empStatus;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [name=" + name + ", eMail=" + eMail + ", dateOfBirth=" + dateOfBirth + ", age=" + age
				+ ", salary=" + salary + ", empStatus=" + empStatus + "]";
	}

	
	


	

}
