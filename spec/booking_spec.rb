# require 'booking'

describe Booking do
  context '#confirm_booking' do

    it "booking can be appoved" do
        test_booking = Booking.create(
          start_date: '2019-11-22',
          end_date: '2019-11-24',
          account_id: 1,
          listing_id: 1
        )
        Booking.confirm_booking(booking_id: test_booking.id)
        test_booking = Booking.first
        expect(test_booking.confirmed).to eq true
    end
  end
end
