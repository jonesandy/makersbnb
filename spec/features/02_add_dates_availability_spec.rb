feature 'add dates availability' do

  scenario('user can add dates avaialbility to the newly created listing') do
    create_new_listing

    expect(page).to have_css('li', :text=>"Available from 2019-12-23 to 2020-01-23")
  end
end
