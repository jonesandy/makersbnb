
describe 'listing' do
  before(:each)do
    Listing.create(name: 'test name', description: 'test description', price: 30,
      start_date: '2019-12-23', end_date: '2020-01-23' , account_id: 1)
  end

  it 'adds a new listing to the database' do

    expect(Listing.all[0].name).to eq 'test name'
    expect(Listing.all[0].description).to eq 'test description'
    expect(Listing.all[0].price).to eq 30
    expect(Listing.all[0].start_date.to_s). to eq "2019-12-23"
    expect(Listing.all[0].end_date.to_s). to eq "2020-01-23"

  end
end
