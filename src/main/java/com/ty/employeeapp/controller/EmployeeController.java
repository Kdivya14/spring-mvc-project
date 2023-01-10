package com.ty.employeeapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.employeeapp.beans.Employee;
import com.ty.employeeapp.dto.EmployeeDto;
import com.ty.employeeapp.service.EmployeeService;







@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService; 
	
	@GetMapping("/index")
	public ModelAndView getHOmePage(ModelAndView modelAndView) {
	 modelAndView.setViewName("index"); 
		return modelAndView;
	}
	@GetMapping("/add-employee")
	public ModelAndView addEmployee(ModelAndView modelAndView) {
		modelAndView.setViewName("add-employee-form");
		return modelAndView;
	}
	
	@PostMapping("/employee")
	public String saveTrain(Employee employee, Model myModel) {
		EmployeeDto savedEmployee = employeeService.saveEmployee(employee);
		if (savedEmployee != null) {
			myModel.addAttribute("msg", "Employee Added ");
			return "display-employee";
		} else {
			return "redirect:/add-employee";
		}
	}
	
	@GetMapping("/display-all")
	public ModelAndView viewAllEmployee(ModelAndView modelAndView, Model model) {

		List<EmployeeDto> allEmp = employeeService.getAllEmployee();
		model.addAttribute("emp", allEmp);
		modelAndView.setViewName("display-all-employee");
		return modelAndView;
	}
	
	@GetMapping("/search-employee-page")
	public ModelAndView getSearchPageForm(ModelAndView modelAndView) {
		modelAndView.setViewName("search-employee-form");
		return modelAndView;
	}
	
	
	@GetMapping("/edit")
	public ModelAndView getEditEmployeePage(ModelAndView modelAndView,Model model, @RequestParam("id") int id) {
		EmployeeDto searchedEmployee = employeeService.searchEmployee(id);
		if(searchedEmployee == null) {
			model.addAttribute("msg", "invalid id please enter correct id"+id);
			modelAndView.setViewName("display-employee");
		} else {
			model.addAttribute("emp", searchedEmployee);
			modelAndView.setViewName("edit-employee-page");
		}
		return modelAndView;
	}
	
	@PostMapping("/update-employee")
	public String updateEmployee(Employee employee,ModelAndView modelAndView,@RequestParam("id")int id) {
		EmployeeDto employeeDto = employeeService.updateEmployee(id, employee);
		return "redirect:/display-all";
		
	}
	
	@GetMapping("/delete-employee-page")
	public ModelAndView getDeletePageForm(ModelAndView modelAndView) {
		modelAndView.setViewName("delete-employee-form");
		return modelAndView;
	}
	
	@GetMapping("/delete-employee")
	public String deleteEmployee(@RequestParam("id") int id, Model model,
			ModelAndView modelAndView) {
		EmployeeDto employeeDto = employeeService.deleteEmployee(id);
		if(employeeDto==null) {
			model.addAttribute("msg", "id is not found "+id);
			return("display-all");
		}
		else
			return "redirect:/display-all";
	}
	
}
