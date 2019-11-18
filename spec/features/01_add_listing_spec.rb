feature 'add a new listing' do
  scenario 'page has a user input fields' do
    visit '/listings/new'
    expect(page).to have_content 'Insert the name of your property'
  end

  scenario 'user can enter new listing and listing is added to the list' do
    visit '/listings/new'
    fill_in('name', with: 'House number one')
    click_button('Submit')
    expect(page).to have_content('House number one')
  end
end
