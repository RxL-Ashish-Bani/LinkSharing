package company

class Dummy {
    String userName
    String password
    String confirmPassword
    String firstName
    String lastName
    String email
    String photo
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
    static constraints = {
        userName nullable: false, blank: false, unique: true
        password nullable: false, blank: false, minSize: 6
        confirmPassword nullable: false, blank: false, minSize: 6
        firstName nullable: false
        lastName nullable: false
        email email: true, nullable: false, unique: true
        dateCreated nullable: true, date:  true
        lastUpdated nullable: true, date: true
        admin nullable: true
        active nullable: true
        photo nullable: true
    }

    static hasMany = [topic: Topic]

    static mapping = {
//        password type: 'password'
//        confirmPassword type:'password'
    }
}



//session['user'] = company.Dummy