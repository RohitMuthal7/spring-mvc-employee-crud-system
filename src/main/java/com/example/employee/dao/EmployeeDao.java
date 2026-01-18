package com.example.employee.dao;

import java.util.List;
import com.example.employee.model.Employee;

public interface EmployeeDao {

    void save(Employee employee);

    List<Employee> findAll();

    Employee findById(int id);

    void delete(int id);
}
