package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Employee;
import com.services.EmployeeServices;

@Controller
public class HomeController {

	@Autowired
	EmployeeServices employeeServices;

	@RequestMapping("/")
	public String userRegister() {
		return "index"; // Ensure "index.jsp" exists in WEB-INF/views
	}

	@GetMapping("/register") 
	public String showRegisterForm() {
		return "register"; 
	}

	@PostMapping("/saveemp")
	public String saveEmployee(Employee employee, Model model) {
	    boolean b = employeeServices.isAddNewEmployee(employee);
	    if (b) {
	        model.addAttribute("msg", "New Employee Added Successfully");
	    } else {
	        model.addAttribute("msg", "Employee Not Added");
	    }
	    return "register";  // This will forward the request to register.jsp
	}

}
