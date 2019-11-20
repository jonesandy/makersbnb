feature 'Log in/out' do
  describe 'user can log in' do

    it "user can log in if have the correct password and email" do
      Account.create(email: "darthvader@empireplc.com",
      password: "Iamyoufather123",
      first_name: "Darth",
      last_name: "Vader")

      visit '/'
      click_link "log_in"

      within '.log_in' do
        fill_in "email", with: "darthvader@empireplc.com"
        fill_in "password", with:'Iamyoufather123'
        click_on "Log In"
      end
      
      expect(page).to have_current_path '/profile'
      expect(page).to have_content "Welcome Darth"

    end
  end
end
