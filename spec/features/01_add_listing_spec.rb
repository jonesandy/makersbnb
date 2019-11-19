feature 'add a new listing' do
  scenario 'user can enter new listing and listing is added to the list' do
    visit '/listings/new'
    fill_in('name', with: 'House number one')
    click_button('Submit')
    expect(page).to have_content('House number one')
  end

  scenario('user can add details to the listing') do
    visit('/listings/new')
    fill_in('name', with: 'House number one')
    fill_in('description', with: 'This is the number one house, its amazing wow.')
    fill_in('price', with: '30')
    click_button('Submit')
    expect(page).to have_content('Name: House number one')
    expect(page).to have_content('Description: This is the number one house, its amazing wow.')
    expect(page).to have_content('Price per night: £30')
  end
end
