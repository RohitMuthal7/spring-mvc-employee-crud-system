package com.example.employee.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.employee.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(Employee employee) {
        sessionFactory.getCurrentSession().saveOrUpdate(employee);
    }

    @Override
    public List<Employee> findAll() {
        return sessionFactory
                .getCurrentSession()
                .createQuery("from Employee", Employee.class)
                .getResultList();
    }

    @Override
    public Employee findById(int id) {
        return sessionFactory
                .getCurrentSession()
                .get(Employee.class, id);
    }

    @Override
    public void delete(int id) {
        Employee emp = findById(id);
        sessionFactory.getCurrentSession().delete(emp);
    }
}
