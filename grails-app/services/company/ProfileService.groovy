package company

import grails.transaction.Transactional

@Transactional
class ProfileService {

    def serviceMethod() {

    }

    def userList(){
        List <Dummy> dummyList=Dummy.createCriteria().list {
            order("dateCreated","asc")
        }
        return dummyList
    }

    def manage(){


    }
}
