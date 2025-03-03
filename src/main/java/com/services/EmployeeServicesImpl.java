package com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entities.Employee;
import com.repository.EmployeeRepository;

@Service("empService")
public class EmployeeServicesImpl implements EmployeeServices {

	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public boolean isAddNewEmployee(Employee employee) {
		return employeeRepository.isAddNewEmployee(employee);
	}

}
