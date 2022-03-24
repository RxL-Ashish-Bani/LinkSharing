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


}
