/**
 * Readies the date and time on page load,
 * called by HomeController.showTime()
 *
 * @author ceheckel
 * @creation 2/15/18.
 */

// Show time - Simple Ajax
console.log("Hello showtime");
$(document).ready( function() {

    console.log("In document ready");
    $('#time').load("/cs4760progassign/home/showTime");

    $('#timeLink').click(function() {
        console.log("showtime click function");
        $('#time').load(this.href); return false;
    });
});
