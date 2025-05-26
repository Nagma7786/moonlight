package com.tka.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Customer;

@Repository
public class CustomerDao {

    @Autowired
    private SessionFactory sessionFactory;

    // Get all customers
    public List<Customer> getAllCustomer() {
        try (Session session = sessionFactory.openSession()) {
            return session.createCriteria(Customer.class).list();
        }
    }

    // Add a new customer
    public String addCustomer(Customer customer) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.save(customer);
            transaction.commit();
            return customer.getName() + " >>> New customer added...";
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();  // Log the exact issue
            return "Failed to add customer: " + e.getMessage();
        }
    }

    // Update an existing customer
    public String updateCustomer(Customer updatedCustomer) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(updatedCustomer);
            session.getTransaction().commit();
            return updatedCustomer.getName() + " >>> Updated...";
        }
    }

    // Delete a customer by ID
    public String deletesCustomer(int id) {
        try (Session session = sessionFactory.openSession()) {
            Customer customer = session.get(Customer.class, id);
            if (customer != null) {
                session.beginTransaction();
                session.delete(customer);
                session.getTransaction().commit();
                return id + " >>> Deleted...";
            } else {
                return "Customer not found.";
            }
        }
    }

    // Get a customer by ID
    public Customer getCustomerById(int id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Customer.class, id);
        }
    }

    // Search for customers by name (using LIKE for partial match)
    public List<Customer> searchCustomerByName(String name) {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Customer c WHERE c.name LIKE :name";
            List<Customer> result = session.createQuery(hql, Customer.class)
                                           .setParameter("name", "%" + name + "%")
                                           .list();
            return result;
        }
    }
}
