package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.tka.entity.Customer;
import com.tka.service.CustomerServive;

@Controller
public class CustomerController {

    @Autowired
    CustomerServive customerService;

    String msg = " ";

    @GetMapping("/")
    public String homePage() {
        return "index";
    }

    @GetMapping("/get-allCustomer")
    public String getAllCustomer(Model model) {
        List<Customer> customerList = customerService.getAllCustomer();
        model.addAttribute("customerList", customerList);
        return "AllCustomerDetails";
    }

    @GetMapping("/open-registerPage")
    public String openregisterPage() {
        return "CustomerRegistration";
    }

    @PostMapping("/add-customer")
    public String addCustomer(@ModelAttribute("customer") Customer customer, Model model) {
        String msg = customerService.addCustomer(customer);
        model.addAttribute("msg", msg);
        return "Welcome";
    }

    @GetMapping("/edit-customer")
    public String editCustomer(@RequestParam int id, Model model) {
        Customer customerOld = customerService.getCustomerById(id);
        model.addAttribute("customer", customerOld);
        return "editCustomer";
    }

    @PostMapping("/update-customer")
    public String updateCustomer(@ModelAttribute Customer customer, Model model) {
        msg = customerService.updateCustomer(customer);
        model.addAttribute("msg", msg);
        return "Welcome";
    }

    @GetMapping("/delete-customer")
    public String deleteCustomer(@RequestParam int id, Model model) {
        msg = customerService.deletesProduct(id);
        model.addAttribute("msg", msg);
        return "Welcome";
    }

    @GetMapping("/about-us")
    public String showAboutUs() {
        return "aboutUus";
    }

    @GetMapping("/contact-us")
    public String showContactPage() {
        return "Contact";
    }

    @GetMapping("/privacy-policy")
    public String showPrivacyPolicyPage() {
        return "Privacy";
    }
    @GetMapping("/open-searchPage")
    public String openSearchPage() {
        return "search"; // Maps to search.jsp
    }


    @GetMapping("/search-customer")
    public String searchCustomer(@RequestParam(name = "name", required = false) String name, Model model) {
        // Handle empty or invalid input
        if (name == null || name.trim().isEmpty()) {
            return "redirect:/get-allCustomer"; // Redirect to the customer list page if search is empty
        }

        // Get search results from the service
        List<Customer> customers = customerService.searchCustomerByName(name);
        model.addAttribute("customerList", customers);
        return "search";  // Ensure this matches your JSP page name
    }
}
