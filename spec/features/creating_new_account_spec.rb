feature 'Account' do
  describe 'creating new account' do
    it "new account is created with correct details" do
      visit '/'
      click_on 'Sign Up!'
      fill_in 'email', with: 'darthvader@empireplc.com'
      fill_in 'password', with: 'Iamyoufather123'
      fill_in 'first_name', with: 'Darth'
      fill_in 'surname', with: 'Vader'
      click_on 'Create Account'
      expect(page).to have_text("Welcome Darth")
    end
  end
end
