package company

class ReadingItemController {

        
    def index() { }

    def read(){
        Dummy dummy=session.getAttribute("users")
        Resources resources=Resources.findById(params.rid)
        Dummy d = Dummy.findById(params.uid)
        ReadingItem readingItem = new ReadingItem(isRead: true,resource:resources ,user: dummy)

        readingItem.save(flush:true)
//        ReadingItem readingItem = ReadingItem.findByResource(params.rid)
//        readingItem.isRead=true
        redirect controller:"dashboard", action:"dashboard"

    }
}
