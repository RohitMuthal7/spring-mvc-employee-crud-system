package com.example.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.employee.model.Employee;
import com.example.employee.service.EmployeeService;

@Controller
@RequestMapping("/")
public class EmployeeController {

    @Autowired
    private EmployeeService service;

    // ROOT URL FIX
    @GetMapping
    public String home() {
        return "redirect:/employee/list";
    }

    @GetMapping("/employee/list")
    public String list(Model model) {
        model.addAttribute("employees", service.getAllEmployees());
        return "employee-list";
    }

    @GetMapping("/employee/add")
    public String addForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "employee-form";
    }

    @PostMapping("/employee/save")
    public String save(@ModelAttribute Employee employee) {
        service.saveEmployee(employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/employee/edit")
    public String edit(@RequestParam int id, Model model) {
        model.addAttribute("employee", service.getEmployee(id));
        return "employee-form";
    }

    @GetMapping("/employee/delete")
    public String delete(@RequestParam int id) {
        service.deleteEmployee(id);
        return "redirect:/employee/list";
    }
}
