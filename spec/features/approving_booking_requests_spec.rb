feature 'booking request approval' do

  scenario 'you can view you booking requests' do

    sign_up
    create_new_listing
    click_link 'Log Out'
    second_sign_up
    click_on 'View Listings'
    first('.single_listing').click_link('Book')
    fill_in('start_date', with: "2019-12-23" )
    fill_in('end_date', with: "2020-01-23")
    click_button 'Submit'
    click_link 'Log Out'
    click_link 'Log In'
    fill_in 'email', with: 'darthvader@empireplc.com'
    fill_in 'password', with: 'Iamyourfather123'
    click_button 'Log In'

    within ".yourBookingRequests" do
      expect(page).to have_text 'Booking Requests'
      expect(page).to have_text 'House number one'
    end


  end

  scenario 'user if notified if they dont have any booking requests' do
    sign_up
    within ".yourBookingRequests" do
      expect(page).to have_text 'Booking Requests'
      expect(page).to have_text 'You Have No Booking Requests... 😥'
    end
  end


end
