
def individual_user_bookings_and_listing_array(user_id:)
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
