package com.services;

import java.util.List;

import com.entities.Employee;

public interface EmployeeServices {

	public boolean isAddNewEmployee(Employee employee);

	public List<Employee> viewAllEmployees();

}
