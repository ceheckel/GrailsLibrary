package cs4760progassign

class Book {

    /* Characteristics of each book */
    String title
    Integer publishYear
    static belongsTo = [author: Author]
    byte[] cover

    /* Method override to display book name instead of ID */
    String toString() {
        "${title}"
    }


    static constraints = {
        title nullable: false, blank: false         // all books have a non-null, non-empty title
        author nullable: false, blank: false        // all books have a non-null, non-empty auther
        publishYear nullable: false                 // all books have a non-null publish year
        cover nullable: true, maxSize: 1024*1024*2  // books can have a cover associated with it
    }
}
