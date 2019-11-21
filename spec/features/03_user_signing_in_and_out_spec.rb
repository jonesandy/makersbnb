feature 'Log in/out' do
  describe 'logging in' do

    it "user can log in if have the correct password and email" do
      Account.create(email: "darthvader@empireplc.com",
      password: "Iamyourfather123",
      first_name: "Darth",
      last_name: "Vader")

      visit '/'
      click_link "log_in"

      within '.log_in' do
        fill_in "email", with: "darthvader@empireplc.com"
        fill_in "password", with:'Iamyourfather123'
        click_on "Log In"
      end

      expect(page).to have_current_path '/profile'
      expect(page).to have_content "Welcome Darth"
    end

    it 'cannot log in with incorrect password but correct email' do
      Account.create(email: "darthvader@empireplc.com",
      password: "Iamyoufather123",
      first_name: "Darth",
      last_name: "Vader")

      visit '/'
      click_link 'log_in'

      within '.log_in' do
        fill_in 'email', with: "darthvader@empireplc.com"
        fill_in 'password', with: "IamNOTyourfather123"
        click_on 'Log In'
      end

      expect(page).to have_css('h3', :text => 'Wrong password')

    end

    it 'cannot log in with unrecognised email' do
      Account.create(email: "darthvader@empireplc.com",
      password: "Iamyoufather123",
      first_name: "Darth",
      last_name: "Vader")

      visit '/'
      click_link 'log_in'

      within '.log_in' do
        fill_in 'email', with: 'imnotdarthvader@empireplc.com'
        fill_in 'password', with: 'Iamyourfather123'
        click_on 'Log In'
      end

      expect(page).to have_css('h3', :text => 'Unknown email')
    end

  end
end
