package cs4760progassign

class Author {

    /* Characteristics of each author */
    String name
    static hasMany = [books: Book]
    static constraints = {
    }

    /* Method override to display author name instead of ID */
    String toString() {
        "${name}"
    }
}
