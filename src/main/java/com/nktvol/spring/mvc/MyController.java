package com.nktvol.spring.mvc;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class MyController {

@RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }
@RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
    model.addAttribute("employee", new Employee());
    return "ask-emp-details-view";

    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee emp) {


    //        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);

        return "show-emp-details-view";
    }
    //    @RequestMapping("/showDetails")
//    public String showEmpDetails() {
//    return "show- emp - details - view";
//    }
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model) {
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - udemy instructor");
//        return "show-emp-details-view";
//    }
}
