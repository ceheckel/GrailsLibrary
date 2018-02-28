package cs4760progassign

class BooksController {
    static final boolean debugIndex = true

    def index(){
        // Book.list() gets all Book instances from the database and puts them in a list.
        def bks = Book.listOrderByTitle()

        // println outputs to console
        if(debugIndex){
            println ""
            bks.each{ println it.title+" by "+Author.get(it.authorId).name}
        }

        // Make a list of all books title and authors
        def bkList = []
        for(int i=0; i<bks.size; i++){
            def bkAuthor = [:]
            bkAuthor.put('title', bks[i].title)
            bkAuthor.put('author', Author.get(bks[i].authorId).name)
            bkAuthor.put('id', bks[i].id)
            bkList << bkAuthor
        }
        if(debugIndex){
            println " "
            println bkList
        }

        // The view expects a Map
        // This a Map to the list of title-author maps
        [bkList: bkList]
    }
}
