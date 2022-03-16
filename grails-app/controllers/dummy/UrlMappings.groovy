package dummy

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/dummy/register")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
