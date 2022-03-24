package company

class DashboardController {


    def dashboard() {
        flash.message = "Welcome..!"
        Dummy a = session.getAttribute("users")
//        Dummy d = Dummy.findById(params.uid)
        println a

        render(view: "dashboard", model: [usr: a])
//        redirect action: "topic", model: [object: d]


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


    def invitation() {

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
        String docUploadPath="/home/ashishbani/Desktop/Dummy/grails-app/assets/images/Document/${params.userName}.png"
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
//        Dummy d = Dummy.findByEmail(params.email)
        flash.message = "Doc Created"
        render view: "dashboard", model: [object1: doc , usr : dr]
    }

    def users1(){
        Dummy f =session.getAttribute("users")
        println "Hello"

        render view: "users1", model: [usrId: f]
    }

}


