package company

class DummyController {

    def dummyService
    def fileUploadService

    def index() {
//        respond dummyService.list()
        respond new Dummy(params)
//        redirect action: "index", method: "POST"
    }

    def show(Long id) {
        respond dummyService.get(id)
//        println(params)
    }

    def create() {
        Dummy dummy= new Dummy(params).save(flush: true)

//        println(params)
    }

    def save(Dummy dummy) {
        dummyService.save(dummy)
//        println(params)
        redirect action:"show", method:"GET"
    }

    def delete(Long id) {
        dummyService.delete(id)
        redirect action:"index", method:"GET"
    }

    def topic(){
        render view: "topic"
    }

//    def dashboard(){
//        println "I m reached Dashboard"
//    }

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

        if(params.password!=params.confirmPassword){
            println "NOOOOOO"
            flash.message="Password didn't match"
            render view: "register"
        }

        else {

            def file=request.getFile('photo')
            String imageUploadPath="/home/ashishbani/Desktop/Dummy/grails-app/assets/images/Photos/${params.userName}.png"
            if(file && !file.empty){
                file.transferTo(new File("${imageUploadPath}"))
                flash.message="Image uploaded"
            }
            else{
                flash.message="Image not uploaded"
            }

            Dummy user=new Dummy(firstName: params.firstName,lastName: params.lastName,password: params.password,confirmPassword: params.confirmPassword,userName: params.userName,email: params.email,photo: imageUploadPath, active: false)
            user.save flush: true
            flash.message="User Created"
            render view: "register"
        }
    }
    def logout(){
        session.invalidate()
        render view: "register"
    }


}
