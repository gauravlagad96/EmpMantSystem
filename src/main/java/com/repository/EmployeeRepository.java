package com.repository;

import java.util.List;

import com.entities.Employee;

public interface EmployeeRepository {

	public boolean isAddNewEmployee(Employee employee);

	public List<Employee> viewAllEmployees();

}
