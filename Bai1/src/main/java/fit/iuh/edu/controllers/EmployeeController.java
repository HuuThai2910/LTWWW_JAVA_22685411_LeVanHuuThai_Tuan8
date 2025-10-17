package fit.iuh.edu.controllers;

import fit.iuh.edu.entities.Employee;
import fit.iuh.edu.services.EmployeeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping("/employees")
public class EmployeeController {
    private final EmployeeService employeeService;



    @GetMapping
    public String fetchAllEmployee(Model model){
        List<Employee> employees = this.employeeService.findAll();
        System.out.println(employees);
        model.addAttribute("employees", employees);
        return "list";
    }
}
