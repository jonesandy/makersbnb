def create_new_listing

    visit('/listings/new')
    fill_in('name', with: 'House number one')
    fill_in('description', with: 'This is the number one house, its amazing wow.')
    fill_in('price', with: '30')

    fill_in('start_date', with: "2019-12-23" )
    fill_in('end_date', with: "2020-01-23")
    click_button('Submit')

end
