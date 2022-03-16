package company

class ProfileController {

    def index() { }

    def prof(){
        println "HII"
        render view: "prof"
    }
    def users1(){
        DashboardController dashboardController=new DashboardController()
        println "Hello"
        render view: "users1"
    }
}
