feature 'view all listings' do
    scenario 'user can see the list of all bookmarks' do
        Listing.create(name: 'test listing three')
        Listing.create(name: 'test listing four')

        visit '/listings'
        expect(page).to have_css('ul', :text => "test listing three")
        expect(page).to have_css('ul', :text => "test listing four")
    end
end