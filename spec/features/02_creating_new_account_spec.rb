feature 'Account' do
  describe 'creating new account' do
    it "new account is created with correct details" do
      visit '/'

      within '.sign_up' do
        fill_in 'email', with: 'darthvader@empireplc.com'
        fill_in 'password', with: 'Iamyoufather123'
        fill_in 'first_name', with: 'Darth'
        fill_in 'last_name', with: 'Vader'
        click_on 'Create Account'
      end

      within '.title' do
        expect(page).to have_text("Welcome Darth")
      end
    end

    it "does not create two account with the same email" do

      Account.create(email:'darthvader@empireplc.com')
      visit '/'
      within '.sign_up' do
        fill_in 'email', with: 'darthvader@empireplc.com'
        fill_in 'password', with: 'Iamyoufather123'
        fill_in 'first_name', with: 'Darth'
        fill_in 'last_name', with: 'Vader'
        click_on 'Create Account'
        expect(page).to have_text("Email Already In Use")

      end


    end


  end
end
