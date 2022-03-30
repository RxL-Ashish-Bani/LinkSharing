package company
import grails.plugins.mail.MailService

class DashboardController {


    def dashboard() {
//        flash.message = "Welcome..!"
        Dummy a = session.getAttribute("users")
//        Dummy d = Dummy.findById(params.uid)

//        println a
        Topic topic= Topic.findByCreatedBy(a)
        Subscription subscription=Subscription.findByTopic(topic)
        Resources resources=Resources.findByUser(a)
        render(view: "dashboard", model: [usr: a,top: topic, res:resources, sub: subscription])
//        redirect action: "dashboard", model: [object: a]



    }

    def delete(){
        Dummy dummy=session.getAttribute("users")
        Subscription subscription=Subscription.findById(params.tid)
        subscription.delete(flush: true)
        println("Deleted")
        render view: "dashboard", model: [usr: dummy]
    }

    def topic() {
//        Dummy d=Dummy.findById(params.uid)
        println(params)
        Dummy b =session.getAttribute("users")
        Topic t = new Topic(topicName: params.topicName,dateCreated: new Date(), lastUpdated: new Date(),topicVisible: params.topicVisible, createdBy: b.id)
        t.save(flush: true)

        println t
        Subscription s=new Subscription(dateCreated: new Date(),seriousness: "VerySerious",topic: t.id, user: b.id)
        s.save(flush: true)



        println s
        flash.message = "Topic Created"
        render view: "dashboard", model: [top: t, sub: s,usr: b]

    }


    MailService mailService   // note it must be outside of any methods/closure

    def invitation() {
        String email =params.receiver
//        String message = params.visibility
        mailService.sendMail {
            to "${email}"
            subject "Contact"
            body "You've been invited"
        }
        flash.message = "Email sent"
        redirect(action:'dashboard')
    }

    def edit(){
        Dummy dummy=session.getAttribute("users")
        Topic topic=Topic.findByCreatedBy(dummy)
        topic.topicName=params.topicName
        topic.save(flush:true)
    }

    def linkRes() {
//        Dummy dum = Dummy.findByEmail(params.email)
        Dummy lr =session.getAttribute("users")
        Resources r = new Resources(description: params.description, topic: params.topic , user: lr.id)
        println r.properties
        r.save(flush: true, failOnEror:true)
        println r

        LinkResource l = new LinkResource(url: params.url, resources: r)

        l.save(flush: true)

        println l
//        ReadingItem readingItem = new ReadingItem(isRead: false,resource: r,user: lr)
//
//        readingItem.save(flush:true)
//        Dummy d = Dummy.findByEmail(params.email)
        flash.message = "Link Created"
        render view: "dashboard", model: [object1: l , usr: lr] //, objRes: r
    }

    def docRes() {
        println params

        Dummy dr =session.getAttribute("users")
        Resources r = new Resources(description: params.description, topic: params.topic, user: dr.id)
        r.save (flush: true)

        def file=request.getFile('photo')
        String docUploadPath="/home/ashishbani/Desktop/Dummy/grails-app/assets/images/Document/${dr.userName+r.id}.png"
        if(file && !file.empty){
            file.transferTo(new File("${docUploadPath}"))
            flash.message="Image uploaded"
        }
        else{
            flash.message="Image not uploaded"
        }

        DocumentResource doc = new DocumentResource(filePath: docUploadPath, resource: r)

        doc.save(flush: true, failOnError: true)

        println doc
//        ReadingItem readingItem = new ReadingItem(isRead: false,resource: r,user: dr)
//
//        readingItem.save(flush:true)
//        Dummy d = Dummy.findByEmail(params.email)
        flash.message = "Doc Created"
        render view: "dashboard", model: [object1: doc , usr: dr]
//        Dummy d = Dummy.findByEmail(params.email)

    }

    def users1(){
        Dummy f =session.getAttribute("users")
        println "Hello"

        render view: "users1", model: [usrId: f]
    }

    def search(){
        Dummy a = session.getAttribute("users")
        println a
        Topic topic= Topic.findByCreatedBy(a)
        Subscription subscription=Subscription.findByTopic(topic)
        println(params)
        def results = Topic.findAllByTopicNameIlike("%${params.search}%")
//        def resources=Resources.findAllByTopic(results)
        println(results)

//        [results:results]
        render view: "search", model: [usr: a,top: topic, results:results, sub: subscription]
    }

    def changeVisible(){
        println params
        Dummy dummy=Dummy.findById(params.uid)
        Topic topic=Topic.findById(params.tid)
        topic.topicVisible=params.topicVisible
        topic.save(flush:true)
        render view: "dashboard", model: [usr: dummy, topic: topic]
    }

    def changeSerious(){
        println params
        Dummy dummy=Dummy.findById(params.uid)
        println(dummy.properties)

        Topic topic=Topic.findById(params.tid)
        Subscription subscription=Subscription.findByTopic(topic)
        subscription.seriousness=params.seriousness
        subscription.save(flush:true)
        render view: "dashboard", model: [usr:dummy , subs: subscription, topic: topic]
    }

}


