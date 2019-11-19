
describe 'listing' do
  let(:new_listing) { Listing.create(name: 'test name', description: 'test description', price: 30 ) }

  it 'adds a new listing to the database' do
    expect(Listing.all[0].name).to eq 'test name'
    expect(Listing.all[0].description).to eq 'test description'
    expect(Listing.all[0].price).to eq 30
  end
end
