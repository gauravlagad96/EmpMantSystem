package com.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.entities.Employee;

@Repository("empRepo")
public class EmployeeRepositoryImpl implements EmployeeRepository {

	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isAddNewEmployee(Employee employee) {

		int value = template.update("insert into employee values('0',?,?,?)", employee.getName(), employee.getEmail(),
				employee.getContact());
		return value > 0 ? true : false;
	}

	@Override
	public List<Employee> viewAllEmployees() {
		String sql = "SELECT * FROM employee";
		return template.query(sql, (rs, rowNum) -> new Employee(rs.getInt("eid"), rs.getString("name"),
				rs.getString("email"), rs.getString("contact")));

	}
}
