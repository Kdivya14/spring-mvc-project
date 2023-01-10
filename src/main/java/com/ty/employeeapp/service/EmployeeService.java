package com.ty.employeeapp.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.employeeapp.beans.Employee;
import com.ty.employeeapp.dao.EmployeeDao;
import com.ty.employeeapp.dto.EmployeeDto;


@Service
public class EmployeeService {
	@Autowired	
	private EmployeeDao employeeDao;
	
	public EmployeeDto saveEmployee(Employee employee) {
		
		EmployeeDto employeeDto = new EmployeeDto();
		employeeDto.setName(employee.getName());
		employeeDto.seteMail(employee.geteMail());
		LocalDate dateOfBirth = LocalDate.parse(employee.getDateOfBirth());
		employeeDto.setDateOfBirth(dateOfBirth);
		employeeDto.setSalary(employee.getSalary());
		employeeDto.setAge(employee.getAge());
		employeeDto.setEmpStatus(employee.getEmpStatus());
		
		return employeeDao.insertEmployee(employeeDto);
	}

	public List<EmployeeDto> getAllEmployee() {
		
		return employeeDao.getAllEmployee();
	}

	
	public EmployeeDto searchEmployee(int id) {
		
		return employeeDao.searchEmployee(id);
	}

	
	

	public EmployeeDto updateEmployee(int id, Employee employee) {
		EmployeeDto employeeDto = new EmployeeDto();
		
		employeeDto.setId(id);
		employeeDto.setName(employee.getName());
		employeeDto.seteMail(employee.geteMail());
		LocalDate dateofBirth=LocalDate.parse(employee.getDateOfBirth());
		employeeDto.setDateOfBirth(dateofBirth);
		employeeDto.setAge(employee.getAge());
		employeeDto.setSalary(employee.getSalary());
		employeeDto.setEmpStatus(employee.getEmpStatus());
		
		return employeeDao.updateEmployee(employeeDto);
	}

	public EmployeeDto deleteEmployee(int id) {
		EmployeeDto employeeDto=employeeDao.searchEmployee(id);
		return employeeDao.deleteEmployee(employeeDto);
		
	}
		
}
