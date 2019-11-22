require 'data_mapper'
require 'dm-timestamps'

class Booking
  include DataMapper::Resource

  property :id, Serial
  property :start_date, Date
  property :end_date, Date
  property :confirmed, Boolean, :default => false
  # current start_date/end_date will return an object like below
  #<Date: 2019-12-23 ((2458841j,0s,0n),+0s,2299161j)>

  belongs_to :listing
  belongs_to :account

  def confirmed_status
    return "Confirmed" if @confirmed == true
    return "Not Confirmed" if @confirmed == false
  end

  def self.confirm_booking(booking_id:)
    self.get(booking_id).update(confirmed: true)
  end


end
