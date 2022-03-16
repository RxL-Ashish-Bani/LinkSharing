package company

class DashboardController {

//    Dummy d=Dummy.findById(params.uid)
    def index() {
        flash.message ="Welcome to index..!"
        Dummy d=Dummy.findById(params.uid)
////        println d
        render view: "index", model: [object: d]
////        render action: "topic", model: [object: d]
    }

    def dashboard(){
        flash.message ="Welcome..!"
        Dummy d=Dummy.findById(params.uid)
        println d

        render view: "dashboard", model: [object: d]
//        redirect action: "topic", model: [object: d]


    }

    def users(){
        Dummy e=Dummy.findById(params.uid)
        println e
        render view: "/profile/users1", model: [object1: e]
    }

    def prof(){
        Dummy f=Dummy.findById(params.uid)
        println f
        render view: "/profile/prof", model: [object2: f]
    }

    def topic(){
//        Dummy d=Dummy.findById(params.uid)
        println(params)
        Topic t=new Topic(topicName: params.topicName,topicVisible: params.topicVisible,dateCreated: new Date(),lastUpdated: new Date())

        t.save(flush: true)
        println t
        flash.message="Topic Created"
        render view: "dashboard", model: [object: t]

    }
    def editP(){

        Dummy dum=Dummy.findById(params.uid)
        dum.firstName=params.firstName
        dum.lastName=params.lastName
        dum.userName=params.userName
    }

    def invitation(){

    }
}
