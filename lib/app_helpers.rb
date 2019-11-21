
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
