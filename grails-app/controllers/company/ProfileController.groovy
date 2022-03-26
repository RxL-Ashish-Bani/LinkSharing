package company

class ProfileController {

    def profileService

    def index() { }

    def prof(){
        Dummy f =session.getAttribute("users")
        println "HII"
        render view: "prof", model: [usrId: f]
    }

    def users(){
        profileService.userList()
        Dummy f =session.getAttribute("users")
        println "HII"
        render view: "users", model: [usrId: f]
    }

    def posts(){

        Dummy f =session.getAttribute("users")
        render view: "posts", model: [usrId: f]
    }

    def topics(){
        Topic topic=Topic.findById(params.tid)
        Dummy f =session.getAttribute("users")
        render view: "topics", model: [usrId: f, top:topic]
    }


    def editProfile(){
//        Dummy dum = Dummy.findByEmail(params.email)

        Dummy f =session.getAttribute("users")
        println(f)


//        Dummy d = Dummy.findByEmail(params.email)
//        println(d.properties)
        render view: "editProfile", model: [usrId: f]
    }


    def editInfo(){
//        Dummy dum = Dummy.findByEmail(params.email)
//        Dummy d =session.getAttribute("users")
        Dummy d = Dummy.findById(params.id)
        println params

        d.properties=params
        d.save(flush:true, failOnError:true)
        println d.firstName
        println d.lastName
        flash.message="Profile updated"
        session.setAttribute("users",d)
//        render view: "editProfile", model: [object: d]
        redirect action: "editProfile"
    }

    def editPassword(){
        Dummy e = Dummy.findById(params.id)

//        Dummy e =session.getAttribute("users")
//        Dummy e = Dummy.findById(session.users)
//            def currUser = session.getAttribute("users")

        if(params.password==params.confirmPassword){
            println "Hii"
//            e.password=params.password
//            e.confirmPassword=params.confirmPassword
            e.properties=params
            e.save(flush:true, failOnError:true)
            flash.message="Password updated"
            println e.password
            println e.confirmPassword
            session.setAttribute("users",e)
            redirect action:"editProfile"
        }
        else{
            println "Hii"
            flash.message ="Password doesn't match..!"
            render view: "editProfile"
        }
    }



}
