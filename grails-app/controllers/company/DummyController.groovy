package company

class DummyController {

    def dummyService

    def delete(Long id) {
        dummyService.delete(id)
        redirect action:"index", method:"GET"
    }

    def topic(){


//        Topic topic=Topic.findAllById(params.tid)
        Dummy f =session.getAttribute("users")


        def list=dummyService.topic()
        println(list)
        render view: "topic", model: [usrId: f, lst:list]
    }

    def login(){
        Dummy user=Dummy.findByUserName(params.userName)
        println(params)

        if (!Dummy.findByUserName(params.userName)){
            flash.message ="User not exist. Create one..!"
            render view: "register"
        }
        else{
            if(user.password!=params.password){
                flash.message ="Password doesn't match..!"
                render view: "register"
            }
            else{
                flash.message ="Welcome..!"
//                redirect controller:"Dashboard", action: "dashboard"
//                session["users"]=user
                session.setAttribute("users",user)
                redirect controller:"dashboard",action: "dashboard" //, params:[uid: user.id]
            }
        }


    }

    def register(){
        def list=dummyService.topic()
        println(list)
        if(params.password!=params.confirmPassword){
            println "NOOOOOO"
            flash.message="Password didn't match"
            render view: "register", model: [lst: list]
        }

        else {

            def file=request.getFile('photo')
            String imageUploadPath="/home/ashishbani/Desktop/Dummy/grails-app/assets/images/Photos/${params.userName}.png"
            if(file && !file.empty){
                file.transferTo(new File("${imageUploadPath}"))
                Dummy user=new Dummy(firstName: params.firstName,lastName: params.lastName,password: params.password,confirmPassword: params.confirmPassword,userName: params.userName,email: params.email,photo: imageUploadPath, active: true)
                user.save flush: true
                flash.message="Image uploaded"
            }
            else{
                Dummy user=new Dummy(firstName: params.firstName,lastName: params.lastName,password: params.password,confirmPassword: params.confirmPassword,userName: params.userName,email: params.email, active: true)
                user.save flush: true
                flash.message="Image not uploaded"
            }

//            dummyService.register()

            flash.message="User Created"
            render view: "register", model: [lst:list]
        }
    }
    def logout(){
        session.invalidate()
        render view: "register"
    }

    def post(){
        Dummy f =session.getAttribute("users")
        println "Hello"

        render view: "post", model: [usrId: f]
    }



}
