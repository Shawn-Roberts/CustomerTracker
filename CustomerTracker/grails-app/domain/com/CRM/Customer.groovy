package com.CRM

import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import java.time.LocalDate

class Customer {


    Long id
    String firstName;
    String lastName;
    LocalDate dateOfBirth
    LocalDate dateOfRegistration = LocalDate.now();

    static constraints =
            {
                firstName maxSize: 100, blank: false, nullable: false
                lastName maxSize: 100, blank: false, nullable: false
                dateOfBirth max: LocalDate.now(), nullable: false

            }

    static mapping =
            {
                id generator: 'increment'
            }

    String getFirstName() {
        return firstName
    }

    void setFirstName(String firstName) {
        this.firstName = firstName
    }

    String getLastName() {
        return lastName
    }

    void setLastName(String lastName) {
        this.lastName = lastName
    }

    LocalDate getDateOfBirth() {
        return dateOfBirth
    }

    void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth
    }

    LocalDate getDateOfRegistration() {
        return dateOfRegistration
    }

    void setDateOfRegistration(LocalDate dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration
    }
}
