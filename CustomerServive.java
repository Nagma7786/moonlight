package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.CustomerDao;
import com.tka.entity.Customer;

@Service
public class CustomerServive {
    @Autowired
    CustomerDao dao;

    public List<Customer> getAllCustomer() {
        return dao.getAllCustomer();
    }

    public String addCustomer(Customer customer) {
        return dao.addCustomer(customer);
    }

    public String deletesProduct(int id) {
        return dao.deletesCustomer(id);
    }

    public Customer getCustomerById(int id) {
        return dao.getCustomerById(id);
    }

    public String updateCustomer(Customer customer) {
        return dao.updateCustomer(customer);
    }

	public List<Customer> searchCustomerByName(String name) {
		return dao.searchCustomerByName(name);
	}

}
