feature 'Booking' do
    describe 'guest can create a new booking' do

      it 'user can view booking made' do
            sign_up
            create_new_listing
            visit '/listings'

            first('.single_listing').click_link('Book')

            fill_in('start_date', with: "2019-12-23" )
            fill_in('end_date', with: "2020-01-23")

            click_button('Submit')

            expect(page).to have_current_path('/profile')
            # save_and_open_page
            within '.yourBookings' do
            expect(page).to have_content('House number one')
            end

        end


    end
end
