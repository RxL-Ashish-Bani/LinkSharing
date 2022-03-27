package company

class ResourceRating {
    Dummy user
    int score
    Date dateCreated
    Date lastUpdated

    static belongsTo = [resource: Resources]

    static constraints = {
        score(min: 1, max: 5)
        user unique: 'resource'
        dateCreated nullable: true
        lastUpdated nullable: true
    }

    @Override
    String toString() {
        return "ResourceRating{" +
                "resource=" + resource +
                ", user=" + user +
                ", score=" + score +
                '}'
    }

}