package company

import java.beans.Visibility

class Topic {
    String topicName
    Date dateCreated
    Date lastUpdated
    Dummy createdBy
    Visibility topicVisible

    static constraints = {
        topicName nullable: false, unique: true
        dateCreated nullable: true, date: true
        lastUpdated nullable: true, date: true
        topicVisible nullable: false
    }
    enum Visibility{
        Private,
        Public
    }
    static hasMany = [subscription: Subscription, resource: Resources]
    static belongsTo = [Dummy]
}
