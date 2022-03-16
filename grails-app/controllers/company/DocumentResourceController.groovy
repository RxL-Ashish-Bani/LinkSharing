package company

class DocumentResourceController {

    def index() { }
    def linkDoc(){
        DocumentResource documentResource=new DocumentResource(filePath: params.filePath, description: params.description)
        documentResource.save(flush: true)
        redirect controller: "dashboard", action: "dashboard", params: [linkDocId:documentResource.id]
    }
}
