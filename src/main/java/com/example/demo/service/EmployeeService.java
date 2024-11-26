package com.example.demo.service;

import java.util.List;
import java.util.Optional;
import java.lang.Integer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository repository;

	// Add new employee
	public void addEmployee(Employee employee) {
		repository.save(employee); // Saves the new employee to the database
	}

	// Find employee by ID
	public Employee findById(int id) {
		return repository.findById(id).orElse(null); // Fetches employee by ID
	}

	// Update or add employee
	public void updateEmployee(Employee employee) {
		repository.save(employee); // Saves employee (creates or updates)
	}

	// Delete employee by ID
	public void deleteEmployee(int id) {
		repository.deleteById(id); // Deletes employee by ID
	}


}