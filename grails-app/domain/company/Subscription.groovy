package company

class Subscription {
    Date dateCreated
    Seriousness seriousness
    static constraints = {
        dateCreated nullable: true, date: true
        seriousness nullable: false
    }
    enum Seriousness{
        VerySerious,
        Serious,
        Casual
    }
    static belongsTo = [Topic, Dummy]
}