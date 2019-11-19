feature 'add a new listing' do


  scenario('user can add details to the newly created listing') do
    create_new_listing
    expect(page).to have_css('li', :text => "Name: House number one")
    expect(page).to have_css('li', :text => 'Description: This is the number one house, its amazing wow.')
    expect(page).to have_css('li', :text => 'Price per night: 30')
    expect(page).to have_css('li', :text => "Available from 2019-12-23 to 2020-01-23")
  end
end
