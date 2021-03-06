package com.CRM

import grails.gorm.transactions.Transactional
import java.time.LocalDate

class BootStrap {

    CustomerService customerService

    def init = { servletContext ->
        addCustomer();
    }
    def destroy = {

    }

    @Transactional
    def addCustomer()
    {

        Customer c = new Customer();
        c.setFirstName("test")
        c.setLastName("test")
        c.setDateOfBirth(LocalDate.now())
        c.setDateOfRegistration(LocalDate.now())

        Customer c2 = new Customer();
        c2.setFirstName("test 2")
        c2.setLastName("test 2 ")
        c2.setDateOfBirth(LocalDate.now())
        c2.setDateOfRegistration(LocalDate.now())

        Customer c3 = new Customer();
        c3.setFirstName("test 3")
        c3.setLastName("test 3")
        c3.setDateOfBirth(LocalDate.now())
        c3.setDateOfRegistration(LocalDate.now())

        customerService.save(c)
        customerService.save(c2)
        customerService.save(c3)


    }
}
