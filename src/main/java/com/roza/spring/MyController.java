package com.roza.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
//@RequestMapping("/employee")
public class MyController {
    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }


//     1 variant
//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(){
//
//        return "show-emp-details-view";
//    }

//     2 variant
//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(HttpServletRequest request, Model model){
//        String empName=request.getParameter("employeeName");
    //        empName="Mr. "+ empName;
//        model.addAttribute("nameAttribute", empName);

//        return "show-emp-details-view";
//    }

    //     3 variant
    @RequestMapping("/showDetails")
    public String showEmployeeDetails(@Valid @ModelAttribute("employee") Employee emp,
                                      BindingResult bindingResult) {

        System.out.println("surname length = "+emp.getSurname().length());

        if (bindingResult.hasErrors()){
            return "ask-emp-details-view";
        }
        else{
            return "show-emp-details-view";
        }

    }

}
