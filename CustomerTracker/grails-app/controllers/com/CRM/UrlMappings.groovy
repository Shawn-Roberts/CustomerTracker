package com.CRM

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }

        }

        "/"(controller: "customer", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
