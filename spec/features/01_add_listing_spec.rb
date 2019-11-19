feature 'add a new listing' do

  scenario('user can add details to the newly created listing') do
    create_new_listing
    expect(page).to have_content('Name: House number one')
    expect(page).to have_content('Description: This is the number one house, its amazing wow.')
    expect(page).to have_content('Price per night: 30')
  end
end
