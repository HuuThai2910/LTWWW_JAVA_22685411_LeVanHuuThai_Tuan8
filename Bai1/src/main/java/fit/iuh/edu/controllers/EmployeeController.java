package fit.iuh.edu.controllers;

import fit.iuh.edu.entities.Employee;
import fit.iuh.edu.services.EmployeeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping
    public String fetchAllEmployee(Model model){
        List<Employee> employees = this.employeeService.findAll();
        model.addAttribute("employees", employees);
        return "list";
    }

    @GetMapping("/add")
    public String getCreateEmployeePage(Model model){
        Employee employee = new Employee();
        model.addAttribute("newEmployee", employee);
        return "add";
    }
    @PostMapping("/add")
    public String createEmployee(@ModelAttribute("newEmployee") Employee newEmployee){
        this.employeeService.save(newEmployee);
        return "redirect:/employees";
    }
    @GetMapping("/update/{id}")
    public String getUpdateEmployeePage(@PathVariable("id") Integer id, Model model){
        Employee employee = this.employeeService.findById(id);
        model.addAttribute("employee", employee);
        System.out.println(employee);
        return "update";
    }
    @PostMapping("/update/{id}")
    public String updateEmployee(@ModelAttribute("employee") Employee employee){
        this.employeeService.save(employee);
        return "redirect:/employees";
    }
    @PostMapping("delete/{id}")
    public String deleteEmployee(@PathVariable("id") Integer id){
        this.employeeService.delete(id);
        return "redirect:/employees";
    }

}
