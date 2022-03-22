package company

class TopicController {

    def index() { }

    def topics(){
        render view: "/profile/topics"
    }

    def posts(){
        render view: "/profile/posts"
    }
}
