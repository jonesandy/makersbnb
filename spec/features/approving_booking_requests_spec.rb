feature 'booking request approval' do

  scenario 'you can view you booking requests' do

    sign_up
    create_new_listing
    click_link 'Log Out'
    second_sign_up
    click_on 'View Listings'
    save_and_open_page
    first('.single_listing').click_link('Book')
    fill_in('start_date', with: "2019-12-23" )
    fill_in('end_date', with: "2020-01-23")
    click_button 'Submit'
    save_and_open_page
    click_link 'Log Out'
    click_link 'Log In'
    fill_in 'email', with: 'darthvader@empireplc.com'
    fill_in 'password', with: 'Iamyourfather123'
    click_button 'Log In'
    save_and_open_page
    within ".yourBookingRequests" do
      expect(page).to have_text 'Booking Requests'
      expect(page).to have_text 'House number one'
    end


  end



end
