package company

class LinkResource {
    String url
    static constraints = {
        url nullable: false, blank: false
    }
    static belongsTo = [resources: Resources]
}
