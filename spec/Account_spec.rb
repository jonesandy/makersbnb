# require 'Account'

describe Account do

  context 'creating account' do

    it 'saved' do
      test_account = Account.create(email: "test@test.com", password: "password123", first_name: "Test", last_name: "Person")
      expect( Account.all[0] ).to be_a(Account)
    end


    it 'failed due to email not unique' do
      test_account = Account.create(email: "test@test.com", password: "password123", first_name: "Test", last_name: "Person")
      test_account = Account.create(email: "test@test.com", password: "password123", first_name: "Test", last_name: "Person")
      expect( Account.all.count).to eq(1)
    end

  end

end
