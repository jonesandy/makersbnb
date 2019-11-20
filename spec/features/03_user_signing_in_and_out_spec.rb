feature 'Log in/out' do
  describe 'user can log in' do
    it "user can log in if have the correct password and email" do
      visit '/'
      click_link"log_in"

      within '.log_in' do
        fill_in"Email", with: "darthvader@empireplc.com"
        fill_in "Password", with:'Iamyoufather123'
        click_on"Log In"
        expect(page).to have_current_path('/log-in')
        expect(page).to have_text"Welcome Darth"
      end

    end
  end
end
