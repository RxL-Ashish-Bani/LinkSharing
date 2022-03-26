package company

class SubscriptionController {

    def index() { }

    def subscribe(){
        println params.tid
        Dummy dummy = session.getAttribute("users")
        println(dummy)
        Topic topic = Topic.findById(params.tid)
        Subscription subscription=new Subscription(user:dummy ,topic:topic,seriousness: Subscription.Seriousness.VerySerious)
        subscription.save(flush:true,failOnError:true)
        redirect controller:"dashboard", action:"dashboard"
    }

    def unsubscribe(){
        println params
        Dummy dummy = session.getAttribute("users")
        Topic topic = Topic.findById(params.tid)
//        Dummy dummy = Dummy.findById(params.uid)
        println "Unsub"

        Subscription subscription=Subscription.findByUser(dummy)
        println subscription
        println "HII"
        subscription.delete(flush: true)
        redirect controller:"dashboard", action:"dashboard"
    }
}
