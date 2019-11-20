def create_three_accounts
  Account.create(email: "test_1@test.com", password: "password123", first_name: "Test 1", last_name: "Person 1")
  Account.create(email: "test_2@test.com", password: "password123", first_name: "Test 2", last_name: "Person 2")
  Account.create(email: "test_3@test.com", password: "password123", first_name: "Test 3", last_name: "Person 3")
end

def create_listings_with_account_id
  Listing.create(name: 'test 1', description: 'test description', price: 30,
    start_date: '2019-12-23', end_date: '2020-01-23' , account_id: 1)
  Listing.create(name: 'test 2', description: 'test 2 description', price: 60,
    start_date: '2019-12-23', end_date: '2020-01-23' , account_id: 2)
  Listing.create(name: 'test 3', description: 'test 3 description', price: 58,
    start_date: '2019-12-23', end_date: '2020-01-23' , account_id: 3)

end
