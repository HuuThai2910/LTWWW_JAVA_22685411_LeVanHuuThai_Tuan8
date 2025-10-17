package fit.iuh.edu.services.impl;

import fit.iuh.edu.entities.Employee;
import fit.iuh.edu.repositories.EmployeeRepository;
import fit.iuh.edu.services.EmployeeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class EmployeeServiceImpl implements EmployeeService {
    private final EmployeeRepository employeeRepository;

    public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @Override
    public Employee save(Employee employee){
        return this.employeeRepository.save(employee);
    }
    @Override
    public void delete(Integer id){
        this.employeeRepository.deleteById(id);
    }
    @Override
    public Employee findById(Integer id){
        return this.employeeRepository.findById(id).orElse(null);
    }
    @Override
    public List<Employee> findAll(){
        return this.employeeRepository.findAll();
    }
}
