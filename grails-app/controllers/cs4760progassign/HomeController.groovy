package cs4760progassign

class HomeController {
    private static final boolean debug = true //flag for debug printing

    /**
     * Displays the current time
     *
     * @return void
     * @author Heckel
     */
    def showTime() {
        if(debug)println "In showTime"
        render "The time is ${new Date()}"
    }

    /**
     * Displays the book with the most recent publish year
     *
     * @return void
     * @author Heckel
     */
    def mostRecentBook() {
        if(debug) { println("In mostRecentBook") }
        def recent = Book.listOrderByPublishYear().last().toString() + " by " + Book.listOrderByPublishYear().last().author.toString()
        render recent
    }

    def index() { }
}
