
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

def individual_user_requests_and_listing_array(user_id:)
  listing_and_request_array = []
  Booking.all(account_id: user_id).map do |booking|
    array = []
    listing = Listing.first(id: booking.listing_id)
    account = Account.first(id: listing.account_id )
    array.push(listing).push(booking).push(account) if listing.account_id == user_id
    listing_and_request_array << array
  end
  listing_and_request_array
end
