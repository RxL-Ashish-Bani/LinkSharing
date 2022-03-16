package company

class TopicController {

    def index() { }

    def topics(){
        render view: "topics"
    }

    def posts(){
        render view: "posts"
    }
}
