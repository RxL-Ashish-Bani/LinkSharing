package company

import grails.transaction.Transactional

@Transactional
class DummyService {


    def topic(){
//        Topic topic=Topic.findById(topicId)
//        Resources resources=Resources.findByTopic(topic)
//        def list=Resources.getResourceRelatedTopic()
//        return list
        def list=Resources.createCriteria().list {

        }
    }

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


    def login(){

    }


}
