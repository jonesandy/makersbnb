// need to insert all dates in the array below
// var blocked_dates = ["20-11-2019", "27-11-2019"];
// var blocked_dates = <%= @date_array %>;
 
function DisableDates(date) {
    var string = jQuery.datepicker.formatDate('dd-mm-yy', date);
    return [blocked_dates.indexOf(string) == -1];
}
 
// var max_date = <%= @end_date %> ;

$(function() {
     $("#start_date_booking").datepicker({
         
         beforeShowDay: DisableDates,
         dateFormat: "yyyy-mm-dd",
         minDate: 0,
         maxDate: 365
     });

     $("#end_date_booking").datepicker({
        beforeShowDay: DisableDates,
        dateFormat: "yyyy-mm-dd",
        minDate: 1,
        maxDate: 365
    });

});

// var array = <% @date_array%>