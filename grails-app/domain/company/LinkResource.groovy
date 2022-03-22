package company

class LinkResource {
    String url
    static belongsTo = [resources: Resources]
    static constraints = {
        url nullable: false, blank: false
    }

}
