package cs4760progassign

class AuthorsController {
    static final boolean debugIndex = true

    def index() {
        def auths = Author.listOrderByName()
        def bks = Book.listOrderByAuthor()

        // println outputs to console
        if(debugIndex){
            println ""
            auths.each {
                print it.name + ", "
            }
            println ""
            bks.each {
                print it.title + ", "
            }
            println ""
        }

        // Make a list of all Authors and their books
        def authList = []
        for(int i=0; i<auths.size; i++){
            def authBooks = [:]
            def temp = []
            authBooks.put('name', auths[i].name)
            Book.getAll().each {
                if(it.author == auths[i]) {
                    temp.add(it.title)
                }
            }
            authBooks.put('title', temp)
            authList << authBooks
        }
        if(debugIndex){
            println " "
            println authList
        }

        // The view expects a Map
        // This a Map to the list of title-author maps
        [authList : authList]
    }
}
