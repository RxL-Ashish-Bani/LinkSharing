package company

class Subscription {
    Date dateCreated
    Seriousness seriousness
    static constraints = {
        dateCreated nullable: true, date: true
        seriousness nullable: true
    }
    enum Seriousness{
        VerySerious,
        Serious,
        Casual
    }
    static belongsTo = [topic: Topic,user: Dummy]
}