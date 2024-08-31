package kr.co.inhatcspring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DepartmentInfoController {

    @GetMapping("/department/introduction")
    public String departmentIntroduction() {
        return "Department/department_introduction";
    }

    @GetMapping("/department/history")
    public String departmentHistory() {
        return "Department/department_history";
    }
}
