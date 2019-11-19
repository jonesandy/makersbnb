require 'data_mapper'
require 'dm-timestamps'

class Listing
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, String
  property :price, Integer
  property :start_date, Date
  property :end_date, Date
  # current start_date/end_date will return an object like below
  #<Date: 2019-12-23 ((2458841j,0s,0n),+0s,2299161j)>

  # belongs_to :user
end
