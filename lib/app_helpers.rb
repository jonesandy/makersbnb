
def user_bookings_array(user_id:)
  listing_and_booking_array = []
  Booking.all(account_id: user_id).map do |booking|
    array = []
    array << Listing.first(id: booking.listing_id)
    array << booking
    listing_and_booking_array << array
  end
  listing_and_booking_array
end

def booking_requests_array(user_id:)
  listing_and_booking_array = []
  Listing.all(account_id:user_id).each do |listing|
    array = []
    if Booking.all(listing_id: listing.id).count != 0
      array << listing
      array << Booking.all(listing_id: listing.id)
      listing_and_booking_array << array
    end
  end
  listing_and_booking_array
end

def date_separator(string)
  string[0] = ''
  count = string.length
  string[count - 1] = ''
  string = string.split(',,')
  string = string.map do |start_end|
    array = []
    dates = start_end.split(',')
      starting_date = Date.parse(dates[0])
      ending_date = Date.parse(dates[1]) + 1
      until starting_date.strftime == ending_date.strftime do
      array << starting_date.strftime
      starting_date += 1
      array
      end
    array
  end
  string.join(",").split(",")
end
