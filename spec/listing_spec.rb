require 'listing'

describe 'Listing' do
    
    describe '.create' do
        it 'creates a new listing' do
            new_listing = Listing.create(name: 'test listing one')
            new_listing_two = Listing.create(name: 'test listing two')
            expect(new_listing).to be_a Listing
            expect(new_listing.name).to eq 'test listing one'
            expect(new_listing_two.name).to eq 'test listing two'
        end
    end
end


