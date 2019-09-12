package com.shalyi.springmvc.service;

import java.util.List;

import com.shalyi.springmvc.entity.Customer;
import com.shalyi.springmvc.exception.ResourceNotFoundException;

public interface CustomerService {
    public List < Customer > getCustomers();

    public void saveCustomer(Customer theCustomer);

    public Customer getCustomer(int theId) throws ResourceNotFoundException;

    public void deleteCustomer(int theId) throws ResourceNotFoundException;
}
