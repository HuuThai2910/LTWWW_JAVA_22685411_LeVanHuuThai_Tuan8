package fit.iuh.edu.services;

import fit.iuh.edu.entities.Employee;

import java.util.List;

public interface EmployeeService {
    Employee save(Employee employee);

    void delete(Integer id);

    Employee findById(Integer id);

    List<Employee> findAll();
}
