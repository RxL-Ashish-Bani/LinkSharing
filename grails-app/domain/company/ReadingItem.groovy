package company

class ReadingItem {
    Boolean isRead
    static constraints = {
        isRead nullable: true
    }
    static belongsTo = [resource: Resources, user: Dummy]
}
