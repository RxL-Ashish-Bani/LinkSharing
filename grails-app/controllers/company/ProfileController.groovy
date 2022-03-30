package company

import grails.converters.JSON
import grails.rest.Link

class ProfileController {

    def profileService

    def index() { }

    def prof(){
        Dummy f =session.getAttribute("users")
        println "HII"
        Topic topic=Topic.findByCreatedBy(f)
        Subscription subscription=Subscription.findByTopic(topic)
        render view: "prof", model: [usrId: f, top: topic, sub: subscription]
    }

    def users(){
        profileService.userList()
        Dummy f =session.getAttribute("users")
        println "HII"
        render view: "users", model: [usrId: f]
    }

    def posts(){

        Dummy f =session.getAttribute("users")
        Resources resources=Resources.findByUser(f)
        render view: "posts", model: [usrId: f, res: resources]
    }

    def post(){
//        Dummy dummy=session.getAttribute("users")
        Dummy dummy=Dummy.findById(params.uid)
        Resources resources=Resources.findById(params.rid)
        render view: "post", model: [usrId: dummy,res: resources]
    }

    def topics(){
        println 'HII topic'
        println params
        Dummy f =session.getAttribute("users")
        Topic topic=Topic.findById(params.tid)
        render view: "topics", model: [usrId: f, top:topic]
    }

    def deleteLink(){
        Dummy dummy=session.getAttribute("users")
        println(params)
        Resources resources=Resources.findById(params.rid)
        LinkResource linkResource=LinkResource.findByResources(resources)
        linkResource.delete(flush: true)
//        Resources resources=Resources.findByTopic(params.rid.topic)
        resources.delete(flush: true)

        render view: "posts", model: [usrId: dummy,res:resources]
    }

    def deleteDoc(){
        Dummy dummy=session.getAttribute("users")
        Resources resources=Resources.findById(params.rid)
        DocumentResource documentResource=DocumentResource.findByResource(resources)
        documentResource.delete(flush: true)
        resources.delete(flush: true)

        render view: "posts", model: [usrId: dummy,res:resources]
    }



    def editProfile(){
//        Dummy dum = Dummy.findByEmail(params.email)

        Dummy f =session.getAttribute("users")
        println(f)


//        Dummy d = Dummy.findByEmail(params.email)
//        println(d.properties)
        Topic topic=Topic.findByCreatedBy(f)
        Subscription subscription=Subscription.findByTopic(topic)
        render view: "editProfile", model: [usrId: f, top: topic, sub:subscription]
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

    def activate(){
        Dummy dummy1=session.getAttribute("users")
        Dummy dummy=Dummy.findById(params.usr)
        dummy.active=true
        dummy.save(flush:true)
        render view: "users", model: [usrId: dummy1 ]
    }

    def deactivate(){
        println(params)
        Dummy dummy1=session.getAttribute("users")
        Dummy dummy=Dummy.findById(params.usr)
        println(dummy.properties)
        dummy.active=false
        dummy.save(flush:true)
        render view: "users", model: [usrId: dummy1 ]
    }

    def editLink(){
        Dummy dummy=session.getAttribute("users")
        println(params)
        Resources resources=Resources.findById(params.rid)
        LinkResource linkResource=LinkResource.findByResources(resources)
        linkResource.url=params
        resources.description=params.description
        linkResource.save(flush: true)
//        Resources resources=Resources.findByTopic(params.rid.topic)
        resources.save(flush: true)

        render view: "post", model: [usrId: dummy,res:resources]
    }

    def editDoc(){
        Dummy dummy=session.getAttribute("users")
        println(params)
        Resources resources=Resources.findById(params.rid)
        DocumentResource documentResource=DocumentResource.findByResource(resources)
//
//        def file=request.getFile('photo')
//        String docUploadPath="/home/ashishbani/Desktop/Dummy/grails-app/assets/images/Document/${dummy.userName+resources.id}.png"
//        if(file && !file.empty){
//            file.transferTo(new File("${docUploadPath}"))
//            documentResource.filePath=docUploadPath
//        }


////        DocumentResource doc = new DocumentResource(filePath: docUploadPath, resource: r)
//
//        documentResource.filePath=
        resources.description=params.description
        documentResource.save(flush: true)
////        Resources resources=Resources.findByTopic(params.rid.topic)
        resources.save(flush: true)
//
        render view: "post", model: [usrId: dummy,res:resources]
    }

    def rating(){
        println params
        Dummy dummy=session.getAttribute("users")
        Resources resources=Resources.findById(params.rid)
        ResourceRating resourceRating=ResourceRating.findByResourceAndUser(resources,dummy)
        if (resourceRating){
            resourceRating.score=params.rating as Integer
            resourceRating.save(flush:true)
        }
        else {
            ResourceRating resourceRating1=new ResourceRating(user: dummy,score: params.rating as Integer, resource: params.rid)
            resourceRating1.save(flush:true)
        }
        render(["name":"Ashish"] as JSON)
    }
}
