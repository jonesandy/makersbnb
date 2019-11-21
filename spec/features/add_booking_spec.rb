feature 'adding bookings' do

  scenario 'Guests can view bookings' do
    sign_up
    within '.yourBookings' do
      expect(page).to have_text('Your Bookings')
      expect(page).to have_text('You Have No Bookings... yet!🏔')
    end
  end
end
