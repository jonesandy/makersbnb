def create_new_listing

    click_on 'New Listing'
    fill_in('name', with: 'House number one')
    fill_in('description', with: 'This is the number one house, its amazing wow.')
    fill_in('price', with: '30')

    fill_in('start_date', with: "2019-12-23" )
    fill_in('end_date', with: "2020-01-23")
    click_button('Submit')

end

def sign_up
  visit '/'

  within '.sign_up' do
    fill_in 'email', with: 'darthvader@empireplc.com'
    fill_in 'password', with: 'Iamyourfather123'
    fill_in 'first_name', with: 'Darth'
    fill_in 'last_name', with: 'Vader'
    click_on 'Create Account'
  end

end

def second_sign_up
  visit '/'

  within '.sign_up' do
    fill_in 'email', with: 'lukeskywalker@republicltd.com'
    fill_in 'password', with: 'Yournotmyfather123'
    fill_in 'first_name', with: 'Luke'
    fill_in 'last_name', with: 'Skywalker'
    click_on 'Create Account'
  end

end

def add_darth_account
  Account.create(email: "darthvader@empireplc.com",
    password: "Iamyourfather123",
    first_name: "Darth",
    last_name: "Vader")
end
