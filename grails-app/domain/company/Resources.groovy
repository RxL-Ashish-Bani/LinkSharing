package company


class Resources {
    String description
//    Dummy createdBy
    Date dateCreated
    Date lastUpdated
    static constraints = {
        description nullable: false
        dateCreated nullable: true, date: true
        lastUpdated nullable: true, date: true
    }

//    static hasMany = [readingItem: ReadingItem]
    static belongsTo = [topic: Topic, user: Dummy]

}
