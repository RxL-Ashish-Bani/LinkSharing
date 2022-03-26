package company

import grails.transaction.Transactional

@Transactional
class DummyService {

    def get(id){
        Dummy.get(id)
    }

    def list() {
        Dummy.list()
    }

    def save(dummy){
        dummy.save()
    }

    def delete(id){
        Dummy.get(id).delete()
    }

    def topic(){
//        Topic topic=Topic.findById(topicId)
//        Resources resources=Resources.findByTopic(topic)
        def list=Resources.createCriteria().list {
//            eq("topicVisible","Public")
            order("dateCreated","desc")
        }
        return list
    }

    def login(){

    }


}
