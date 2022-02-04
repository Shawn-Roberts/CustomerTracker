package com.CRM

import org.springframework.web.servlet.ModelAndView

class CustomerController {

    CustomerService customerService

    def index()
    {
        def customers = customerService.list(params)
        render(view: "index",model: [customers:customers])
    }

    def show(Long id)
    {
        log.error("SHOWING ")
        respond customerService.get(id)
    }

}
