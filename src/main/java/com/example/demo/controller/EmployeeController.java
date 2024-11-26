package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

import org.springframework.ui.Model;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService service;

	@GetMapping("/home")
	public String home() {
		return "home"; // Display Home Page
	}

	// Show the form to enter Employee ID
	@GetMapping("/viewEmployee")
	public String viewEmployee(Model model) {
	    // The model will display any messages added from the RedirectAttributes
	    return "viewEmployee";
	}
	



    // Fetch employee details by ID (called after entering ID)
    @PostMapping("/fetchEmployee")
    public String fetchEmployeeById(@RequestParam("id") int id, Model model) {
        Employee employee = service.findById(id);
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "fetchEmployee";  // Show details on a new page
        } else {
            model.addAttribute("error", "Employee not found");
            return "fetchEmployee";  // If employee not found, show error
        }
    }

    // Show the update employee page
    @GetMapping("/updateEmployee")
    public String showUpdateEmployeePage(@RequestParam("id") int id, Model model) {
        Employee employee = service.findById(id);
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "updateEmployee";  // Display form with current employee details
        } else {
            model.addAttribute("error", "Employee not found");
            return "/updateEmployee";  // Redirect to updateEmployee page if employee is not found
        }
    }

    @PostMapping("/updateEmployee")
    public String updateEmployee(@ModelAttribute Employee employee, RedirectAttributes redirectAttributes) {
        service.updateEmployee(employee); // Update the employee
        redirectAttributes.addFlashAttribute("message", "Employee Details Updated");
        return "redirect:/viewEmployee"; // Redirect without employee ID
    }



    // Show the add employee page
    @GetMapping("/addEmployee")
    public String showAddEmployeePage() {
        return "addEmployee";  // Show form to add a new employee
    }
    
    @PostMapping("/addEmployee")
    public String saveNewEmployee(@ModelAttribute Employee employee, Model model) {
        service.addEmployee(employee);
        model.addAttribute("message", "New employee added successfully");
        model.addAttribute("viewEmployeeLink", true); // This indicates that the link should be shown
        return "addEmployee"; // This will reload the addEmployee.jsp page
    }


    // Save a new employee
    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee, Model model) {
        service.addEmployee(employee);  // Save the new employee to the database
        model.addAttribute("success", "Employee added successfully");
        return "/home";  // Redirect to viewEmployee page after adding
    }

    // Delete employee by ID
    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("id") int id, Model model) {
        service.deleteEmployee(id);  // Delete the employee with the provided ID
        model.addAttribute("success", "Employee deleted successfully");
        return "home";  // Redirect to home page after deletion
    }

}