/**
 * Displays the book with the most recent publish year
 * Called by HomeController.mostRecentBook()
 *
 * @author ceheckel
 * @creation 2/15/18.
 */

$(document).ready( function() {

    console.log("In document ready");
    $('#mostRecent').load("/cs4760progassign/home/mostRecentBook");

    $('#mostRecentLink').click(function() {
        $('#mostRecent').load(this.href); return false;
    });
});