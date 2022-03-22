package company

class Dummy {
    String userName
    String password
    String confirmPassword
    String firstName
    String lastName
    String email
    Byte photo
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
    static constraints = {
        userName nullable: false, blank: false, unique: true
        password nullable: false, blank: false
        confirmPassword nullable: false, blank: false
        firstName nullable: false
        lastName nullable: false
        email email: true, nullable: false
        dateCreated nullable: true, date:  true
        lastUpdated nullable: true, date: true
        admin nullable: true
        active nullable: true
        photo nullable: true
    }

    static hasMany = [topic: Topic]
}



//session['user'] = company.Dummy