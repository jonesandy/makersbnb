feature 'add a new listing' do

  scenario('user can add details to the newly created listing') do
    sign_up
    create_new_listing

    expect(page).to have_css('div', :text => 'House number one')
    expect(page).to have_css('div', :text => 'This is the number one house, its amazing wow.')
    expect(page).to have_css('div', :text => 'Price per night: £30')
    expect(page).to have_css('div', :text => "Available from 23/12/2019 to 23/01/2020")

  end

  context "viewing listing you have posted" do
    scenario 'user wants to view listings they have posted' do
      create_three_accounts
      create_listings_with_account_id
      sign_up
      create_new_listing
      click_on 'Profile'
      within '.yourListings' do
        expect(page).to have_text 'Your Listings'
        expect(page).to have_text 'House number one'
      end


    end
  end
end
