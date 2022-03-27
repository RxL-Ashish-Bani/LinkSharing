package company

import grails.converters.JSON

class ResourceRatingController {

    def save() {
        Map resultInfo = [:]
        Resources resource = Resources.get(params.int('resourceId'))
        Dummy user = Dummy.get(params.int('userId'))
        if (user && resource) {
            ResourceRating resourceRating = ResourceRating.findOrCreateWhere(resource: resource,
                    user: user)
            if (resourceRating) {
                resourceRating.score = params.int('score')
                if (resourceRating.save(flush: true)) {
                    resultInfo.message = 'Successfully save rating'
                } else {
                    resultInfo.error = 'Fail to save rating'
                }
            } else {
                resultInfo.error = 'Fail to save rating'
            }
        } else {
            resultInfo.error = 'Fail to save rating'
        }
        render(resultInfo as JSON)
    }
}