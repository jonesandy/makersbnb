feature 'add a new listing' do


  scenario('user can add details to the newly created listing') do
    visit('/listings/new')
    fill_in('name', with: 'House number one')
    fill_in('description', with: 'This is the number one house, its amazing wow.')
    fill_in('price', with: '30')
    click_button('Submit')
  
    expect(page).to have_css('div', :text => 'House number one')
    expect(page).to have_css('div', :text => 'This is the number one house, its amazing wow.')
    expect(page).to have_css('div', :text => 'Price per night: £30')

  end
end
