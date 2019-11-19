feature 'view all listings' do
    scenario 'user can see the list of all bookmarks' do
        Listing.create(name: 'test listing three')
        Listing.create(name: 'test listing four')
        Listing.create(name: 'test listing five')

        visit '/listings'
        expect(page).to have_css('li', :text => "test listing three")
        expect(page).to have_css('li', :text => "test listing four")
        expect(page).to have_css('li', :text => "test listing five")
    end
end