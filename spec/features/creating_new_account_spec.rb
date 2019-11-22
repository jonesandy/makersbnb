feature 'Account' do
  describe 'creating new account' do
    it "new account is created with correct details" do
      sign_up

      within '.title' do
        expect(page).to have_text("Welcome Darth")
      end
    end

    it "does not create two account with the same email" do
      Account.create(email:'darthvader@empireplc.com')
      sign_up
      within '.flash_alert' do
        expect(page).to have_text("Email Already In Use")
      end


    end


  end
end
