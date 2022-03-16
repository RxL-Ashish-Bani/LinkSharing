package company


class DocumentResource {
    String filePath
    static constraints = {
        filePath nullable : true
    }
    static belongsTo = [resource: Resources]

}