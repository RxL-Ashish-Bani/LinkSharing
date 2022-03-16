package company

class LinkResourceController {

    def index() { }

    def linkRes(){
        LinkResource linkResource=new LinkResource(url: params.url,description:params.description)
        linkResource.save(flush: true)
        println linkResource
        redirect controller:"dashboard", action:"dashboard", params: [linkId:linkResource.id]
    }
}
