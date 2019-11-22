// need to insert all dates in the array below
var blocked_dates = ["20/11/2019", "27/11/2019"];
 
function DisableDates(date) {
    var string = jQuery.datepicker.formatDate('dd/mm/yy', date);
    return [blocked_dates.indexOf(string) == -1];
}
 
$(function() {
     $("#start_date_booking").datepicker({
         beforeShowDay: DisableDates
     });

     $("#end_date_booking").datepicker({
        beforeShowDay: DisableDates
    });

});