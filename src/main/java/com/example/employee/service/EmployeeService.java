package com.example.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.employee.dao.EmployeeDao;
import com.example.employee.model.Employee;

@Service
@Transactional
public class EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    public List<Employee> getAllEmployees() {
        return employeeDao.findAll();
    }

    public void saveEmployee(Employee emp) {
        employeeDao.save(emp);
    }

    public Employee getEmployee(int id) {
        return employeeDao.findById(id);
    }

    public void deleteEmployee(int id) {
        employeeDao.delete(id);
    }
}
